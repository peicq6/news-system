package com.system.modules.system.entity;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.experimental.Accessors;

import java.io.Serializable;
import java.util.Date;

/**
 * 菜单权限表(SysMenu)实体类
 *
 * @author makejava
 * @since 2021-01-05 12:29:25
 */
@Data
@ApiModel("菜单权限表信息")
@EqualsAndHashCode(callSuper = false)
@Accessors(chain = true)
public class SysMenu implements Serializable {

    private static final long serialVersionUID = -72615847669413816L;
    /**
    * 主键ID
    */    
    @ApiModelProperty("主键ID")
    private String id;
    
    /**
    * 父ID
    */    
    @ApiModelProperty("父ID")
    private String parentId;
    
    /**
    * 菜单标题
    */    
    @ApiModelProperty("菜单标题")
    private String name;
    
    /**
    * 路径
    */    
    @ApiModelProperty("路径")
    private String url;
    
    /**
    * 组件
    */    
    @ApiModelProperty("组件")
    private String component;
    
    /**
    * 组件名字
    */    
    @ApiModelProperty("组件名字")
    private String componentName;
    
    /**
    * 一级菜单跳转地址
    */    
    @ApiModelProperty("一级菜单跳转地址")
    private String redirect;
    
    /**
    * 菜单类型(0:一级菜单; 1:子菜单:2:按钮权限)
    */    
    @ApiModelProperty("菜单类型(0:一级菜单; 1:子菜单:2:按钮权限)")
    private Integer menuType;
    
    /**
    * 菜单权限编码
    */    
    @ApiModelProperty("菜单权限编码")
    private String perms;
    
    /**
    * 权限策略1显示2禁用
    */    
    @ApiModelProperty("权限策略1显示2禁用")
    private Integer permsType;
    
    /**
    * 菜单排序
    */    
    @ApiModelProperty("菜单排序")
    private Double sortNo;
    
    /**
    * 聚合子路由: 1是0否
    */    
    @ApiModelProperty("聚合子路由: 1是0否")
    private Byte alwaysShow;
    
    /**
    * 菜单图标
    */    
    @ApiModelProperty("菜单图标")
    private String icon;
    
    /**
    * 是否路由菜单: 0:不是  1:是
    */    
    @ApiModelProperty("是否路由菜单: 0:不是  1:是")
    private Byte isRoute;
    
    /**
    * 是否叶子节点:    1:是   0:不是
    */    
    @ApiModelProperty("是否叶子节点:    1:是   0:不是")
    private Byte isLeaf;
    
    /**
    * 是否缓存该页面:    1:是   0:不是
    */    
    @ApiModelProperty("是否缓存该页面:    1:是   0:不是")
    private Byte keepAlive;
    
    /**
    * 是否隐藏路由: 0否,1是
    */    
    @ApiModelProperty("是否隐藏路由: 0否,1是")
    private Byte hidden;
    
    /**
    * 外链菜单打开方式 0/内部打开 1/外部打开
    */    
    @ApiModelProperty("外链菜单打开方式 0/内部打开 1/外部打开")
    private Byte internalOrExternal;
    
    /**
    * 描述
    */    
    @ApiModelProperty("描述")
    private String description;
    
    /**
    * 按钮权限状态(0无效1有效)
    */    
    @ApiModelProperty("按钮权限状态(0无效1有效)")
    private String status;
    
    /**
    * 删除状态 0正常 1删除
    */    
    @ApiModelProperty("删除状态 0正常 1删除")
    private Byte delFlag;
    
    /**
    * 创建人
    */    
    @ApiModelProperty("创建人")
    private String createBy;
    
    /**
    * 创建时间
    */    
    @ApiModelProperty("创建时间")
    private Date createTime;
    
    /**
    * 更新人
    */    
    @ApiModelProperty("更新人")
    private String updateBy;
    
    /**
    * 更新时间
    */    
    @ApiModelProperty("更新时间")
    private Date updateTime;
    
    /**
    * 功能级别 1校级 2区级
    */    
    @ApiModelProperty("功能级别 1校级 2区级")
    private String menuScope;
    
}