package com.system.modules.system.service.impl;

import com.system.base.service.impl.BaseServiceImpl;
import com.system.modules.system.entity.SysMenu;
import com.system.modules.system.mapper.SysMenuMapper;
import com.system.modules.system.service.SysMenuService;
import com.system.modules.system.util.CacheConstant;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.HashSet;
import java.util.List;
import java.util.Set;

/**
 * @description: TODO
 * @author: peicq pcq@bjbjxing.com
 * @date: 2021/1/7 17:19
 * @version: v1.0
 */
@Service
@Transactional(rollbackFor = Exception.class)
public class SysMenuServiceImpl extends BaseServiceImpl<SysMenuMapper, SysMenu> implements SysMenuService {

    @Autowired
    private SysMenuMapper sysMenuMapper;

    @Override
    @Cacheable(value = CacheConstant.SYS_USER_PERMISSION_CACHE, key = "#username")
    public Set<String> getUserPermissions(String username) {
        List<SysMenu> permissionList = sysMenuMapper.getPermissionByUsername(username);
        Set<String> permissionSet = new HashSet<>();
        for (SysMenu po : permissionList) {
            if (StringUtils.isNotBlank(po.getPerms())) {
                permissionSet.add(po.getPerms());
            }
        }
        return permissionSet;
    }

}
