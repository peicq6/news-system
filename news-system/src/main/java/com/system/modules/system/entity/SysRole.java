package com.system.modules.system.entity;

import java.util.Date;
import java.io.Serializable;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import io.swagger.annotations.*;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.experimental.Accessors;

/**
 * 角色表(SysRole)实体类
 *
 * @author makejava
 * @since 2021-01-28 11:45:55
 */
@Data
@ApiModel("角色表信息")
@EqualsAndHashCode(callSuper = false)
@Accessors(chain = true)
public class SysRole implements Serializable {

    private static final long serialVersionUID = -95914782261422154L;
    /**
    * 主键id
    */    
    @ApiModelProperty("主键id")
    @TableId(type = IdType.ASSIGN_UUID)
    private String id;
    
    /**
    * 角色名称
    */    
    @ApiModelProperty("角色名称")
    private String roleName;
    
    /**
    * 角色编码
    */    
    @ApiModelProperty("角色编码")
    private String roleCode;
    
    /**
    * 描述
    */    
    @ApiModelProperty("描述")
    private String description;
    
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
    
}