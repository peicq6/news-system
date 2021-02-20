package com.system.modules.system.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.experimental.Accessors;

import java.io.Serializable;
import java.util.Date;

@Data
@EqualsAndHashCode(callSuper = false)
@Accessors(chain = true)
public class SysLoginLog implements Serializable {

	private static final long serialVersionUID = 1L;

	@TableId(type = IdType.AUTO)
	@ApiModelProperty(value = "ID")
	private String id;

	@ApiModelProperty(value = "登录用户ID")
	private String userId;

	@ApiModelProperty(value = "登录账号")
	private String username;

	@ApiModelProperty(value = "登录时间")
	private Date loginTime;

	@ApiModelProperty(value = "登录结果")
	private String loginResult;

	@ApiModelProperty(value = "登录地点")
	private String location;

	@ApiModelProperty(value = "IP地址")
	private String ip;

}
