package com.system.modules.system.entity;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.experimental.Accessors;

import java.io.Serializable;
import java.util.Date;

/**
 * 字典项目表(SysDictItem)实体类
 *
 * @author makejava
 * @since 2021-01-07 17:14:24
 */
@Data
@ApiModel("字典项目表信息")
@EqualsAndHashCode(callSuper = false)
@Accessors(chain = true)
public class SysDictItem implements Serializable {
    private static final long serialVersionUID = 817350105874749345L;
    /**
    * 主键ID
    */    
    @ApiModelProperty("主键ID")
    private String id;
    
    /**
    * 字典ID
    */    
    @ApiModelProperty("字典ID")
    private String dictId;
    
    /**
    * 字典项文本
    */    
    @ApiModelProperty("字典项文本")
    private String itemText;
    
    /**
    * 字典项值
    */    
    @ApiModelProperty("字典项值")
    private String itemValue;
    
    /**
    * 描述
    */    
    @ApiModelProperty("描述")
    private String description;
    
    /**
    * 排序
    */    
    @ApiModelProperty("排序")
    private Integer sortOrder;
    
    /**
    * 状态 1启用 0不启用
    */    
    @ApiModelProperty("状态 1启用 0不启用")
    private String status;
    
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