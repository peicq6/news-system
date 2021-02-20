package com.system.modules.system.mapper;


import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.system.modules.system.entity.SysMenu;
import com.system.modules.system.entity.SysRoleMenu;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import java.util.List;

/***
 * @ClassName SysRoleMenuMapper
 * @Description
 * @Author peicq pcq@bjbjxing.com
 * @Date 2021/1/6 12:01
 */
@Repository
public interface SysRoleMenuMapper extends BaseMapper<SysRoleMenu> {

    @Select("SELECT m.id,m.`NAME`,m.PARENT_ID FROM sys_menu m  LEFT JOIN sys_role_menu r on r.MENU_ID=m.id WHERE r.ROLE_ID=#{roleId} order by m.SORT_NO")
    List<SysMenu> getRoleTreeInfo(@Param("roleId") String roleId);
}
