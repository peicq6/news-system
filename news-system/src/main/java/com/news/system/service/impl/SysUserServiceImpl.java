package com.news.system.service.impl;


import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.news.system.base.controller.QueryRequest;
import com.news.system.base.controller.Result;
import com.news.system.base.service.impl.BaseServiceImpl;
import com.news.system.config.redis.RedisConfig;
import com.news.system.entity.LoginUser;
import com.news.system.entity.SysMenu;
import com.news.system.entity.SysUser;
import com.news.system.entity.SysUserRole;
import com.news.system.mapper.SysMenuMapper;
import com.news.system.mapper.SysUserMapper;
import com.news.system.mapper.SysUserRoleMapper;
import com.news.system.service.SysUserService;
import com.news.system.util.*;
import lombok.extern.slf4j.Slf4j;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.CacheEvict;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.HashSet;
import java.util.List;
import java.util.Set;

import static com.news.system.entity.SysUser.STATUS_NORMAL;

/**
 * @description: TODO
 * @author: peicq pcq@bjbjxing.com
 * @date: 2021/1/6 10:06
 * @version: v1.0
 */
@Slf4j
@Service
@Transactional(rollbackFor = Exception.class)
public class SysUserServiceImpl extends BaseServiceImpl<SysUserMapper, SysUser> implements SysUserService {


    @Autowired
    private SysUserRoleMapper sysUserRoleMapper;
    @Autowired
    private SysMenuMapper sysMenuMapper;
    @Autowired
    private RedisUtil redisUtil;


    @Override
    public SysUser getUserByUsername(String username) {
        if (StringUtils.isBlank(username)) {
            return null;
        }

        String cacheKey = CacheConstant.SYS_USER_INFO_CACHE + CacheConstant.SPRING_CACHEKEY_PREFIX + username;
        Object ov = redisUtil.get(cacheKey);
        if (ov != null) {
            return (SysUser) ov;
        } else {
            SysUser sysUser = getOne(new LambdaQueryWrapper<SysUser>().eq(SysUser::getUsername, username));
            if (sysUser == null) {
                return null;
            }
            redisUtil.set(cacheKey, sysUser, RedisConfig.cacheDuration.getSeconds());
            return sysUser;
        }
    }

    /**
     * 删除用户
     *
     * @param user
     */
    @Override
    @CacheEvict(value = { CacheConstant.SYS_USER_INFO_CACHE }, key = "#user.username")
    public void deleteUser(SysUser user) {
        sysUserRoleMapper.delete(new LambdaQueryWrapper<SysUserRole>().eq(SysUserRole::getUserId, user.getId()));
        removeById(user.getId());
    }

    @Override
    @Transactional
    @CacheEvict(value = { CacheConstant.SYS_USER_INFO_CACHE, CacheConstant.SYS_USER_ROLE_CACHE, CacheConstant.SYS_USER_PERMISSION_CACHE }, key = "#sysUser.username")
    public Result<Object> editUserWithRole(SysUser sysUser, String selectedRoles) {
        Result<Object> result = new Result<>();
        try {
            if (getById(sysUser.getId()) == null) {
                result.error500("无此用户");
                return result;
            }
            if (count(new LambdaQueryWrapper<SysUser>().eq(SysUser::getUsername, sysUser.getUsername()).ne(SysUser::getId, sysUser.getId())) > 0) {
                result.error500("用户账户已存在");
                return result;
            }
            if (StringUtils.isNotBlank(sysUser.getPhone())
                    && count(new LambdaQueryWrapper<SysUser>().eq(SysUser::getPhone, sysUser.getPhone()).ne(SysUser::getId, sysUser.getId())) > 0) {
                result.error500("手机号码已存在");
                return result;
            }
            sysUser.setPassword(null);
            sysUser.setSalt(null);
            updateById(sysUser);
            sysUserRoleMapper.delete(new LambdaQueryWrapper<SysUserRole>().eq(SysUserRole::getUserId, sysUser.getId()));
            if (StringUtils.isNotBlank(selectedRoles)) {
                for (String roleId : StringUtils.split(selectedRoles, ",")) {
                    sysUserRoleMapper.insert(new SysUserRole().setRoleId(roleId).setUserId(sysUser.getId()));
                }
            }
            result.success("修改成功");
        } catch (Exception e) {
            e.printStackTrace();
            result.error500("操作失败");
        }
        return result;
    }

    @Override
    public Result<IPage<SysUser>> userPageList(QueryRequest request, SysUser sysUser) {
        Result<IPage<SysUser>> result = new Result<>();
        LambdaQueryWrapper<SysUser> queryWrapper = new LambdaQueryWrapper<>();
        if (StringUtils.isNotBlank(sysUser.getRealname())) {
            queryWrapper.like(SysUser::getRealname, sysUser.getRealname());
        }
        Page<SysUser> page = new Page<>();
        SortUtil.handlePageSort(request, page, true);
        Page<SysUser> userPage = page(page, queryWrapper);
        result.setResult(userPage);
        return result;
    }

    @Override
    public Result<SysUser> addUser(SysUser user) {
        Result<SysUser> result = new Result<>();
        try {
            if (count(new LambdaQueryWrapper<SysUser>().eq(SysUser::getUsername, user.getUsername())) > 0) {
                result.error500("用户账户已存在");
                return result;
            }
            if (StringUtils.isNotBlank(user.getPhone()) && count(new LambdaQueryWrapper<SysUser>().eq(SysUser::getPhone, user.getPhone())) > 0) {
                result.error500("手机号码已存在");
                return result;
            }
            String salt = PasswordUtil.genSalt();
            user.setSalt(salt);
            String passwordEncode = PasswordUtil.encrypt(user.getUsername(), user.getPassword(), salt);
            user.setPassword(passwordEncode);
            user.setStatus(STATUS_NORMAL);
            save(user);
            if (StringUtils.isNotBlank(user.getSelectedRoles())) {
                for (String roleId : StringUtils.split(user.getSelectedRoles(), ",")) {
                    sysUserRoleMapper.insert(new SysUserRole().setRoleId(roleId).setUserId(user.getId()));
                }
            }
        } catch (NumberFormatException e) {
            e.printStackTrace();
            result.error500("操作失败请联系管理员");
        }
        return result;
    }

    @Override
    public Set<String> queryUserRoles(String username) {
        // 查询用户拥有的角色集合
        List<String> roles = sysUserRoleMapper.getRoleByUserName(username);
        log.info("-------通过数据库读取用户拥有的角色Rules------username： " + username + ",Roles size: " + (roles == null ? 0 : roles.size()));
        return new HashSet<>(roles);
    }

    @Override
    public List<String> getRoleIdsByUsername(String username) {
        return sysUserRoleMapper.getRoleIdByUserName(username);
    }

    @Override
    public Set<String> queryUserAuths(String username) {
        Set<String> permissionSet = new HashSet<>();
        List<SysMenu> menuList = sysMenuMapper.getPermissionByUsername(username);
        for (SysMenu po : menuList) {
            if (oConvertUtils.isNotEmpty(po.getPerms())) {
                permissionSet.add(po.getPerms());
            }
        }
        log.info("-------通过数据库读取用户拥有的权限Perms------username： "+ username+",Perms size: "+ (permissionSet==null?0:permissionSet.size()) );
        return permissionSet;
    }

    @Override
    @Cacheable(cacheNames= CacheConstant.SYS_USERS_CACHE, key="#username")
    public LoginUser getUserByName(String username) {
        if(oConvertUtils.isEmpty(username)) {
            return null;
        }
        LoginUser loginUser = new LoginUser();
        SysUser sysUser = getOne(new LambdaQueryWrapper<SysUser>().eq(SysUser::getUsername, username));
        if(sysUser==null) {
            return null;
        }
        BeanUtils.copyProperties(sysUser, loginUser);
        return loginUser;
    }


}
