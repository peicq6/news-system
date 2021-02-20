package com.news.system.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableLogic;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.experimental.Accessors;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Null;
import java.io.Serializable;
import java.util.Date;
import java.util.Set;

/**
 * 用户表(SysUser)实体类
 *
 * @author makejava
 * @since 2021-01-05 12:25:36
 */
@Data
@ApiModel("用户表信息")
@EqualsAndHashCode(callSuper = false)
@Accessors(chain = true)
public class SysUser implements Serializable {

    private static final long serialVersionUID = 799862453928770953L;

    /**
     * 状态 1正常 2冻结
     */
    public static final Integer STATUS_NORMAL = 1;
    /**
     * 状态 1正常 2冻结
     */
    public static final Integer STATUS_DISABLE = 2;

    @ApiModelProperty(value = "用户ID")
    @TableId(type = IdType.ASSIGN_UUID)
    private String id;

    @ApiModelProperty(value = "用户名")
    @NotBlank(message = "{required}")
    private String username;

    private String password;

    private String salt;

    @ApiModelProperty(value = "真实姓名")
    @NotBlank(message = "{required}")
    private String realname;

    @ApiModelProperty(value = "头像")
    private String avatar;

    @ApiModelProperty(value = "性别")
    private String sex;

    @ApiModelProperty(value = "邮箱")
    private String email;

    @ApiModelProperty(value = "手机号")
    private String phone;

    @ApiModelProperty(value = "身份")
    private String identity;

    @ApiModelProperty(value = "状态")
    @Null(message = "{empty}")
    private Integer status;

    @ApiModelProperty(value = "删除状态")
    @Null(message = "{empty}")
    @TableLogic
    private Integer delFlag;

    @ApiModelProperty(value = "创建人")
    @Null(message = "{empty}")
    private String createBy;

    @ApiModelProperty(value = "创建时间")
    @Null(message = "{empty}")
    private Date createTime;

    @ApiModelProperty(value = "更新人")
    @Null(message = "{empty}")
    private String updateBy;

    @ApiModelProperty(value = "更新时间")
    @Null(message = "{empty}")
    private Date updateTime;

    @ApiModelProperty(value = "租户ID")
    @Null(message = "{empty}")
    private String tenantId;

    @ApiModelProperty(value = "组织机构ID")
    @Null(message = "{empty}")
    private String orgId;

    @TableField(exist = false)
    private String selectedRoles;
}