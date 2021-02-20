package com.news.system.entity;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.experimental.Accessors;

import java.io.Serializable;

/**
 * 用户角色表(SysUserRole)实体类
 *
 * @author makejava
 * @since 2021-01-05 12:25:48
 */
@Data
@ApiModel("用户角色表信息")
@EqualsAndHashCode(callSuper = false)
@Accessors(chain = true)
public class SysUserRole implements Serializable {

    private static final long serialVersionUID = 995038660167210815L;

    
    /**
    * 用户id
    */    
    @ApiModelProperty("用户id")
    private String userId;
    
    /**
    * 角色id
    */    
    @ApiModelProperty("角色id")
    private String roleId;
    
}