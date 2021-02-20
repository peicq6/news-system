package com.system.modules.system.service;


import com.baomidou.mybatisplus.core.metadata.IPage;
import com.system.base.controller.QueryRequest;
import com.system.base.controller.Result;
import com.system.base.service.BaseService;
import com.system.modules.system.entity.LoginUser;
import com.system.modules.system.entity.SysUser;

import java.util.List;
import java.util.Set;

/***
 * @ClassName SysUserService
 * @Description
 * @Author peicq pcq@bjbjxing.com
 * @Date 2021/1/6 10:05
 */
public interface SysUserService extends BaseService<SysUser> {

    /**
     * @description: 用户列表
     * @author peicq pcq@bjbjxing.com
     * @Date 2021/1/6 10:37
     */
    Result<IPage<SysUser>> userPageList(QueryRequest request, SysUser sysUser);

    /**
     * @description: 添加用户
     * @author peicq pcq@bjbjxing.com
     * @Date 2021/1/6 11:29
     */
    Result<SysUser> addUser(SysUser sysUser);

    /**
    * @description: 根据用户名查询用户权限
    * @author peicq pcq@bjbjxing.com
    * @Date  2021/1/7 14:50
    */
    Set<String> queryUserRoles(String userName);

    /**
     * 22通过用户账号查询角色Id集合
     * @param username
     * @return
     */
     List<String> getRoleIdsByUsername(String username);

    /**
     * 2查询用户权限信息
     * @param username
     * @return
     */
    Set<String> queryUserAuths(String username);


    /**
    * @description: 根据用户账号查询用户信息
    * @author peicq pcq@bjbjxing.com
    * @param username
    * @return com.news.system.entity.LoginUser
    * @Date  2021/1/7 15:51
    */
    LoginUser getUserByName(String username);

    /**
    * @description: 根据用户名获取用户
    * @author peicq pcq@bjbjxing.com
    * @param username
    * @return com.news.system.entity.SysUser
    * @Date  2021/1/7 16:51
    */
    SysUser getUserByUsername(String username);

    /**
    * @description: 删除用户
    * @author peicq pcq@bjbjxing.com
    * @Date  2021/1/29 12:20
    */
    void deleteUser(SysUser sysUser);

    /**
    * @description: 修改用户
    * @author peicq pcq@bjbjxing.com
    * @Date  2021/1/29 14:55
    */
    Result<Object> editUserWithRole(SysUser sysUser, String selectedRoles);

}
