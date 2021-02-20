package com.news.system.entity;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.experimental.Accessors;

import java.io.Serializable;
import java.util.Date;

/**
 * 字典表(SysDict)实体类
 *
 * @author makejava
 * @since 2021-01-07 17:14:16
 */
@Data
@ApiModel("字典表信息")
@EqualsAndHashCode(callSuper = false)
@Accessors(chain = true)
public class SysDict implements Serializable {
    private static final long serialVersionUID = -82770164844535343L;
    /**
    * 主键ID
    */    
    @ApiModelProperty("主键ID")
    private String id;
    
    /**
    * 字典名称
    */    
    @ApiModelProperty("字典名称")
    private String dictName;
    
    /**
    * 字典编码
    */    
    @ApiModelProperty("字典编码")
    private String dictCode;
    
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