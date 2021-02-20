package com.system.modules.system.mapper;


import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.system.modules.system.entity.SysUserRole;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import java.util.List;

/***
 * @ClassName SysUserRoleMapper
 * @Description
 * @Author peicq pcq@bjbjxing.com
 * @Date 2021/1/6 12:01
 */
@Repository
public interface SysUserRoleMapper extends BaseMapper<SysUserRole> {

    @Select("select role_code from sys_role where id in (select role_id from sys_user_role where user_id = (select id from sys_user where username=#{username}))")
    List<String> getRoleByUsername(@Param("username") String username);


    /**
     * 查询用户拥有的角色集合
     * @param username
     * @return
     */
    @Select("select role_code from sys_role where id in (select role_id from sys_user_role where user_id = (select id from sys_user where username=#{username}))")
    List<String> getRoleByUserName(@Param("username") String username);

    /**
     * @param username
     * @return
     */
    List<String> getRoleIdByUserName(@Param("username") String username);
}
