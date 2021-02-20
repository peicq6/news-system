package com.news.system.controller;


import com.baomidou.mybatisplus.core.metadata.IPage;
import com.news.system.base.controller.QueryRequest;
import com.news.system.base.controller.Result;
import com.news.system.entity.SysUser;
import com.news.system.service.SysUserService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import lombok.extern.java.Log;
import lombok.extern.slf4j.Slf4j;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import javax.validation.constraints.NotBlank;

/**
 * @description: 用户管理
 * @author: peicq pcq@bjbjxing.com
 * @date: 2021/1/6 9:59
 * @version: v1.0
 */
@Slf4j
@Api(tags = "用户管理")
@RestController
@RequestMapping("/api/user")
public class SysUserController {

    @Autowired
    private SysUserService sysUserService;

    /**
     * @description: 用户列表
     * @author peicq pcq@bjbjxing.com
     * @Date 2021/1/6 10:37
     */
    @GetMapping
    @ApiOperation(value = "用户列表", notes = "用户列表")
    public Result<IPage<SysUser>> userPageList(QueryRequest request, SysUser sysUser) {
        return sysUserService.userPageList(request, sysUser);
    }

    /**
     * @description: 添加用户
     * @author peicq pcq@bjbjxing.com
     * @Date 2021/1/6 11:29
     */
    @PostMapping
    @ApiOperation(value = "添加用户", notes = "添加用户")
    public Result<SysUser> addUser(@RequestBody SysUser sysUser) {
        return sysUserService.addUser(sysUser);
    }

    /**
     * 修改用户
     *
     * @param sysUser
     * @param selectedRoles
     * @return
     */
    @ApiOperation("修改用户")
    @PutMapping
    public Result<Object> editUser(@Valid SysUser sysUser, @NotBlank(message = "{required}") String selectedRoles) {
        return sysUserService.editUserWithRole(sysUser, selectedRoles);
    }

    /**
     * 删除用户
     *
     * @param userId
     * @return
     */

    @ApiOperation("删除用户")
    @DeleteMapping("/{userId}")
    public Result<Object> deleteUser(@NotBlank(message = "{required}") @PathVariable String userId) {
        Result<Object> result = new Result<>();
        try {
            SysUser sysUser = sysUserService.getById(userId);
            if (sysUser == null) {
                result.error500("无此用户");
                return result;
            }
            if ("efd292c521bd11eb8dfdb0262880441f".equals(sysUser.getId()) && sysUser.getUsername().equals("admin")) {
                result.error500("管理员账号不能删除");
                return result;
            }
            sysUserService.deleteUser(sysUser);
            result.success("删除成功");
        } catch (Exception e) {
            e.printStackTrace();
            result.error500("操作失败");
        }
        return result;
    }


}
