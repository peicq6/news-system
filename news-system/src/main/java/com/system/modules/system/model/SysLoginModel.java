package com.system.modules.system.model;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

import javax.validation.constraints.NotBlank;

@Data
@ApiModel(value = "登录对象", description = "登录对象")
public class SysLoginModel {

	@ApiModelProperty(value = "账号")
	@NotBlank(message = "{required}")
	private String username;

	@ApiModelProperty(value = "密码")
	@NotBlank(message = "{required}")
	private String password;

	@ApiModelProperty(value = "验证码")
	@NotBlank(message = "{required}")
	private String captcha;

	@ApiModelProperty(value = "验证码key")
	@NotBlank(message = "{required}")
	private String checkKey;

}