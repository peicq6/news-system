package com.system.modules.system.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.system.modules.system.entity.SysMenu;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

/***
 * @ClassName SysMenuMapper
 * @Description
 * @Author peicq pcq@bjbjxing.com
 * @Date 2021/1/6 12:00
 */
@Repository
public interface SysMenuMapper extends BaseMapper<SysMenu> {

    /**
     * @param username
     * @return java.util.List<com.news.system.entity.SysMenu>
     * @description: 通过用户名获取用户权限
     * @author peicq pcq@bjbjxing.com
     * @Date 2021/1/7 17:26
     */
    List<SysMenu> getPermissionByUsername(@Param("username") String username);
}
