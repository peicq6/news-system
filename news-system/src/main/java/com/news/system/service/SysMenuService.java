package com.news.system.service;

import com.news.system.base.service.BaseService;
import com.news.system.entity.SysMenu;

import java.util.Set;

/***
 * @ClassName SysMenuService
 * @Description
 * @Author peicq pcq@bjbjxing.com
 * @Date 2021/1/7 17:18
 */
public interface SysMenuService extends BaseService<SysMenu> {

    /**
     * 通过用户名获取用户权限
     *
     * @param username
     * @return
     */
    Set<String> getUserPermissions(String username);
}
