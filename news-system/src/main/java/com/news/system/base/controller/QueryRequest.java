package com.news.system.base.controller;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.ToString;
import lombok.experimental.Accessors;

import java.io.Serializable;

@Data
@EqualsAndHashCode(callSuper = false)
@Accessors(chain = true)
@ApiModel("机构信息")
@ToString
public class QueryRequest implements Serializable {

    private static final long serialVersionUID = 1L;

    @ApiModelProperty(value = "每页的数据量")
    private int pageSize = 10;
    @ApiModelProperty(value = "当前页码")
    private int pageNum = 1;
    @ApiModelProperty(value = "排序字段")
    private String sortField;
    @ApiModelProperty(value = "排序规则，ascend升序，descend降序")
    private String sortOrder;
}
