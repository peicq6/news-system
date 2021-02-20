package com.system.modules.system.service;

import cn.hutool.core.lang.tree.Tree;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.system.base.controller.QueryRequest;
import com.system.base.controller.Result;
import com.system.base.service.BaseService;
import com.system.modules.system.entity.SysRole;

import java.util.List;
import java.util.Set;

/**
 * @description: TODO
 * @author: peicq pcq@bjbjxing.com
 * @date: 2021/1/7 17:10
 * @version: v1.0
 */
public interface SysRoleService extends BaseService<SysRole> {

    /**
    * @description: listRole
    * @author peicq pcq@bjbjxing.com
    * @Date  2021/1/28 9:08
    */
    Result<List<SysRole>> listRole();


    /**
     * 通过用户名获取用户角色集合
     *
     * @param username
     * @return
     */
    Set<String> getUserRoles(String username);

    /**
     * 角色列表
     *
     * @param queryRequest
     * @param sysRole
     * @return
     */
    IPage<SysRole> listRole(QueryRequest queryRequest, SysRole sysRole);

    /**
     * 新增角色
     *
     * @param sysRole
     * @param selectedMenus
     */
    void addRoleWithMenu(SysRole sysRole, String selectedMenus);

    /**
     * 修改角色
     *
     * @param sysRole
     * @param selectedMenus
     */
    void editRoleWithMenu(SysRole sysRole, String selectedMenus);

    /**
     * 删除角色
     *
     * @param role
     */
    void deleteRole(SysRole role);

    /**
     * @author 裴苍琼 pcq@bjbjxing.com
     * @Description 详情树
     * @Date  2020/12/11 18:02
     *
     * @return*/
    Result<List<Tree<String>>> getRoleTreeInfo(String roleId);
}
