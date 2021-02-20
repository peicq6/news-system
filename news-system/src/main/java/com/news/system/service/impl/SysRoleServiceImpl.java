package com.news.system.service.impl;

import cn.hutool.core.lang.tree.Tree;
import cn.hutool.core.lang.tree.TreeUtil;
import cn.hutool.core.lang.tree.parser.NodeParser;
import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.news.system.base.controller.QueryRequest;
import com.news.system.base.controller.Result;
import com.news.system.base.service.impl.BaseServiceImpl;
import com.news.system.entity.SysMenu;
import com.news.system.entity.SysRole;
import com.news.system.entity.SysRoleMenu;
import com.news.system.mapper.SysRoleMapper;
import com.news.system.mapper.SysRoleMenuMapper;
import com.news.system.mapper.SysUserRoleMapper;
import com.news.system.service.SysRoleService;
import com.news.system.util.CacheConstant;
import com.news.system.util.SortUtil;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.CacheEvict;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.HashSet;
import java.util.List;
import java.util.Set;

/**
 * @description: TODO
 * @author: peicq pcq@bjbjxing.com
 * @date: 2021/1/7 17:11
 * @version: v1.0
 */
@Service
@Transactional(rollbackFor = Exception.class)
public class SysRoleServiceImpl extends BaseServiceImpl<SysRoleMapper, SysRole> implements SysRoleService {


    @Autowired
    private SysUserRoleMapper sysUserRoleMapper;
    @Autowired
    private SysRoleMenuMapper sysRoleMenuMapper;


    @Override
    public Result<List<SysRole>> listRole() {
        Result<List<SysRole>> result = new Result<>();
        List<SysRole> list = list();
        result.setResult(list);
        return result;
    }



    /**
     * 通过用户名获取用户角色集合
     *
     * @param username
     * @return
     */
    @Override
    @Cacheable(value = CacheConstant.SYS_USER_ROLE_CACHE, key = "#username")
    public Set<String> getUserRoles(String username) {
        List<String> roles = sysUserRoleMapper.getRoleByUsername(username);
        return new HashSet<>(roles);
    }

    /**
     * 角色列表
     *
     * @param queryRequest
     * @param sysRole
     * @return
     */
    @Override
    public IPage<SysRole> listRole(QueryRequest queryRequest, SysRole sysRole) {
        LambdaQueryWrapper<SysRole> queryWrapper = new LambdaQueryWrapper<>();
        if (StringUtils.isNotBlank(sysRole.getRoleName())) {
            queryWrapper.like(SysRole::getRoleName, sysRole.getRoleName());
        }
        Page<SysRole> page = new Page<>();
        SortUtil.handlePageSort(queryRequest, page, true);
        return this.page(page, queryWrapper);
    }

    /**
     * 新增角色
     *
     * @param sysRole
     * @param
     */
    @Override
    @Transactional
    public void addRoleWithMenu(SysRole sysRole, String selectedMenus) {
        save(sysRole);
        if (StringUtils.isNotBlank(selectedMenus)) {
            for (String menuId : StringUtils.split(selectedMenus, ",")) {
                sysRoleMenuMapper.insert(new SysRoleMenu().setMenuId(menuId).setRoleId(sysRole.getId()));
            }
        }
    }

    /**
     * 修改角色
     * @param sysRole
     * @param
     */
    @Override
    @Transactional
    @CacheEvict(value = { CacheConstant.SYS_USER_ROLE_CACHE, CacheConstant.SYS_USER_PERMISSION_CACHE, CacheConstant.SYS_USER_MENU_CACHE }, allEntries = true)
    public void editRoleWithMenu(SysRole sysRole, String selectedMenus) {
        updateById(sysRole);
        sysRoleMenuMapper.delete(new LambdaQueryWrapper<SysRoleMenu>().eq(SysRoleMenu::getRoleId, sysRole.getId()));
        if (StringUtils.isNotBlank(selectedMenus)) {
            for (String menuId : StringUtils.split(selectedMenus, ",")) {
                sysRoleMenuMapper.insert(new SysRoleMenu().setMenuId(menuId).setRoleId(sysRole.getId()));
            }
        }
    }

    /**
     * 删除角色
     *
     * @param role
     */
    @Override
    @Transactional
    @CacheEvict(value = { CacheConstant.SYS_USER_ROLE_CACHE, CacheConstant.SYS_USER_PERMISSION_CACHE, CacheConstant.SYS_USER_MENU_CACHE }, allEntries = true)
    public void deleteRole(SysRole role) {
        sysRoleMenuMapper.delete(new LambdaQueryWrapper<SysRoleMenu>().eq(SysRoleMenu::getRoleId, role.getId()));
        removeById(role.getId());
    }

    @Override
    public Result<List<Tree<String>>> getRoleTreeInfo(String roleId) {
        Result<List<Tree<String>>> result = new Result<>();
        List<SysMenu> menuList=sysRoleMenuMapper.getRoleTreeInfo(roleId);
        List<Tree<String>> trees= TreeUtil.build(menuList, "0", new NodeParser<SysMenu, String>() {
            @Override
            public void parse(SysMenu treeModel, Tree<String> tree) {
                tree.setId(treeModel.getId());
                tree.setName(treeModel.getName());
                tree.setParentId(treeModel.getParentId());
                tree.putExtra("title", treeModel.getName());
                tree.putExtra("value", treeModel.getId());
                tree.putExtra("key", treeModel.getId());
            }
        });
        result.setResult(trees);
        return result;
    }

}
