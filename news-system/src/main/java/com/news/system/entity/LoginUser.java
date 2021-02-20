package com.news.system.entity;

import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.experimental.Accessors;

import java.io.Serializable;

@Data
@EqualsAndHashCode(callSuper = false)
@Accessors(chain = true)
public class LoginUser implements Serializable {

    private static final long serialVersionUID = -82770164844545348L;

    /**
     * ID
     */
    private String id;

    /**
     * 登录账号
     */
    private String username;

    /**
     * 密码
     */
    private String password;

    /**
     * 盐
     */
    private String salt;

    /**
     * 邮箱
     */
    private String email;

    /**
     * 手机号
     */
    private String phone;

    /**
     * 状态
     */
    private Integer status;

    /**
     * 删除状态
     */
    private Integer delFlag;

    /**
     * 租户ID
     */
    private String tenantId;

    /**
     * 完整组织信息
     */
    private Object orgInfo;

    /**
     * 完整用户信息
     */
    private Object userInfo;

}
