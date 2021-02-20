package com.news.system.controller;

import cn.hutool.core.lang.tree.Tree;
import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.news.system.base.controller.QueryRequest;
import com.news.system.base.controller.Result;
import com.news.system.entity.SysRole;
import com.news.system.entity.SysRoleMenu;
import com.news.system.mapper.SysRoleMenuMapper;
import com.news.system.mapper.SysUserRoleMapper;
import com.news.system.service.SysRoleService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiParam;
import lombok.extern.slf4j.Slf4j;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import javax.validation.constraints.NotBlank;
import java.util.List;
import java.util.stream.Collectors;

/**
 * @description: TODO
 * @author: peicq pcq@bjbjxing.com
 * @date: 2021/1/28 9:03
 * @version: v1.0
 */
@Slf4j
@Api(tags = "角色管理")
@RestController
@RequestMapping("/api/role")
public class SysRoleController {

    @Autowired
    private SysUserRoleMapper sysUserRoleMapper;
    @Autowired
    private SysRoleMenuMapper sysRoleMenuMapper;
    @Autowired
    private SysRoleService sysRoleService;

    @GetMapping("/listRole")
    @ApiOperation(value = "查询所有角色", notes = "用于用户添加选择角色")
    public Result<List<SysRole>> listRole() {
        return sysRoleService.listRole();
    }

    /**
     * 角色列表
     *
     * @param queryRequest
     * @return
     */
    @ApiOperation("角色列表")
    @GetMapping
    @RequiresPermissions("system:role:view")
    public Result<IPage<SysRole>> listRole(QueryRequest queryRequest, SysRole sysRole) {
        Result<IPage<SysRole>> result = new Result<>();
        IPage<SysRole> pageList = sysRoleService.listRole(queryRequest, sysRole);
        result.setSuccess(true);
        result.setResult(pageList);
        return result;
    }

    /**
     * 查询全部角色
     *
     * @param
     * @return
     */
    @ApiOperation("查询全部角色")
    @GetMapping("/all")
    @RequiresPermissions("system:role:view")
    public Result<Object> getAllRole() {
        return Result.ok(sysRoleService.list(new QueryWrapper<SysRole>()));
    }

    /**
     * 查询角色菜单
     *
     * @param roleId
     * @return
     */
    @ApiOperation("查询角色菜单")
    @GetMapping("/menu/{roleId}")
    @RequiresPermissions("system:role:view")
    public Result<Object> getRoleUser(@ApiParam("角色ID") @NotBlank(message = "{required}") @PathVariable String roleId) {
        List<SysRoleMenu> list = sysRoleMenuMapper.selectList(new LambdaQueryWrapper<SysRoleMenu>().eq(SysRoleMenu::getRoleId, roleId));
        return Result.ok(list.stream().map(roleMenu -> roleMenu.getMenuId()).collect(Collectors.toList()));
    }

    /**
     * 新增角色
     * @param sysRole
     * @param selectedMenus
     * @return
     */
    @ApiOperation("新增角色")
    @PostMapping
    @RequiresPermissions("system:role:operate")
    public Result<Object> addRole(@Valid SysRole sysRole, @NotBlank(message = "{required}") String selectedMenus) {
        Result<Object> result = new Result<>();
        try {
            if (sysRoleService.count(new LambdaQueryWrapper<SysRole>().eq(SysRole::getRoleCode, sysRole.getRoleCode())) > 0) {
                result.error500("角色编码已存在");
                return result;
            }
            sysRoleService.addRoleWithMenu(sysRole, selectedMenus);
            result.success("新增成功");
        } catch (Exception e) {
            e.printStackTrace();
            result.error500("操作失败");
        }
        return result;
    }

    /**
     * 修改角色
     *
     * @param sysRole
     * @param selectedMenus
     * @return
     */
    @ApiOperation("修改角色")
    @PutMapping
    @RequiresPermissions("system:role:operate")
    public Result<Object> editRole(@Valid SysRole sysRole, @NotBlank(message = "{required}") String selectedMenus) {
        Result<Object> result = new Result<>();
        try {
            if (sysRoleService.getById(sysRole.getId()) == null) {
                result.error500("无此角色");
                return result;
            }
            if (sysRoleService.count(new LambdaQueryWrapper<SysRole>().eq(SysRole::getRoleCode, sysRole.getRoleCode()).ne(SysRole::getId, sysRole.getId())) > 0) {
                result.error500("角色编码已存在");
                return result;
            }
            sysRoleService.editRoleWithMenu(sysRole, selectedMenus);
            result.success("修改成功");
        } catch (Exception e) {
            e.printStackTrace();
            result.error500("操作失败");
        }
        return result;
    }

    /**
     * 删除角色
     *
     * @param roleId
     * @return
     */
    @ApiOperation("删除角色")
    @DeleteMapping("/{roleId}")
    @RequiresPermissions("system:role:operate")
    public Result<Object> deleteRole(@ApiParam("角色ID") @NotBlank(message = "{required}") @PathVariable String roleId) {
        Result<Object> result = new Result<>();
        try {
            SysRole sysRole = sysRoleService.getById(roleId);
            if (sysRole == null) {
                result.error500("无此角色");
                return result;
            }
            sysRoleService.deleteRole(sysRole);
            result.success("删除成功");
        } catch (Exception e) {
            e.printStackTrace();
            result.error500("操作失败");
        }
        return result;
    }


    /**
     * @author 裴苍琼 pcq@bjbjxing.com
     * @Description 详情树
     * @Date  2020/12/11 18:01
     **/
    @ApiOperation("详情树")
    @GetMapping("/{roleId}")
    @RequiresPermissions("system:role:view")
    public Result<List<Tree<String>>> getRoleTreeInfo(@PathVariable String roleId) {
        return sysRoleService.getRoleTreeInfo(roleId);
    }

}
