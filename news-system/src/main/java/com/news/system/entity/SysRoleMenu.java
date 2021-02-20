package com.news.system.entity;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.experimental.Accessors;

import java.io.Serializable;
import java.util.Date;

/**
 * 角色权限表(SysRoleMenu)实体类
 *
 * @author makejava
 * @since 2021-01-05 12:26:52
 */
@Data
@ApiModel("角色权限表信息")
@EqualsAndHashCode(callSuper = false)
@Accessors(chain = true)
public class SysRoleMenu implements Serializable {

    private static final long serialVersionUID = 488673041600494686L;
    /**
    * 角色ID
    */    
    @ApiModelProperty("角色ID")
    private String roleId;
    
    /**
    * 权限ID
    */    
    @ApiModelProperty("权限ID")
    private String menuId;
    
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
    
}