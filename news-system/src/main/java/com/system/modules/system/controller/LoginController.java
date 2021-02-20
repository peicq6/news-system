package com.system.modules.system.controller;

import cn.hutool.core.util.RandomUtil;
import com.alibaba.fastjson.JSONObject;
import com.system.base.controller.Result;
import com.system.modules.system.service.SysDictService;
import com.system.modules.system.service.SysLoginLogService;
import com.system.modules.system.service.SysMenuService;
import com.system.modules.system.service.SysUserService;
import com.system.modules.system.entity.LoginUser;
import com.system.modules.system.entity.SysUser;
import com.system.modules.system.model.SysLoginModel;
import com.system.modules.system.util.*;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import lombok.extern.slf4j.Slf4j;
import org.apache.commons.lang3.StringUtils;
import org.apache.shiro.SecurityUtils;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import static com.system.modules.system.entity.SysUser.STATUS_DISABLE;
import static com.system.modules.system.util.CommonConstant.DEL_FLAG_1;

/**
 * @description: 用户登录
 * @author: peicq pcq@bjbjxing.com
 * @date: 2021/1/7 16:21
 * @version: v1.0
 */


@Slf4j
@RestController
@Api(tags="用户登录")
public class LoginController {

    @Autowired
    private RedisUtil redisUtil;
    @Autowired
    private SysUserService sysUserService;
    @Autowired
    private SysDictService sysDictService;
    @Autowired
    private SysMenuService sysMenuService;
    @Autowired
    private SysLoginLogService sysLoginlogService;



    /**
     * 账号密码登录
     *
     * @param sysLoginModel
     * @return
     */
    @ApiOperation("账号密码登录")
    @PostMapping("/login")
    public Result<JSONObject> login(@Valid SysLoginModel sysLoginModel) {
        Result<JSONObject> result = new Result<JSONObject>();

        String username = sysLoginModel.getUsername();
        String password = sysLoginModel.getPassword();

        // 校验验证码
        String captcha = sysLoginModel.getCaptcha();
        if (StringUtils.isBlank(captcha)) {
            result.error500("验证码无效");
            return result;
        }
        String lowerCaseCaptcha = captcha.toLowerCase();
        String realKey = MD5Util.MD5Encode(lowerCaseCaptcha + sysLoginModel.getCheckKey(), "utf-8");
        Object checkCode = redisUtil.get(realKey);
        if (checkCode == null || !checkCode.equals(lowerCaseCaptcha)) {
            result.error500("验证码错误");
            return result;
        }

        // 1. 校验用户是否有效
        SysUser sysUser = sysUserService.getUserByUsername(username);
        result = checkUserIsEffective(sysUser);
        if (!result.isSuccess()) {
            return result;
        }

        // 2. 校验用户名或密码是否正确
        String userpassword = PasswordUtil.encrypt(username, password, sysUser.getSalt());
        String syspassword = sysUser.getPassword();
        if (!syspassword.equals(userpassword)) {
            result.error500("用户名或密码错误");
            return result;
        }

        // 用户登录信息
        generateUserInfo(sysUser, result);
        sysLoginlogService.saveLoginLog("登录成功！", sysUser);

        return result;
    }

    /**
     * 校验用户是否有效
     *
     * @param sysUser
     * @return
     */
    private Result<JSONObject> checkUserIsEffective(SysUser sysUser) {
        Result<JSONObject> result = new Result<>();
        // 情况1：根据用户信息查询，该用户不存在
        if (sysUser == null) {
            result.error500("该用户不存在，请注册");
            sysLoginlogService.saveLoginLog("用户登录失败，用户不存在！", sysUser);
            return result;
        }
        // 情况2：根据用户信息查询，该用户已注销
        if (DEL_FLAG_1.equals(sysUser.getDelFlag())) {
            sysLoginlogService.saveLoginLog("用户登录失败，用户名已注销！", sysUser);
            result.error500("该用户已注销");
            return result;
        }
        // 情况3：根据用户信息查询，该用户已冻结
        if (STATUS_DISABLE.equals(sysUser.getStatus())) {
            sysLoginlogService.saveLoginLog("用户登录失败，用户名已冻结！", sysUser);
            result.error500("该用户已冻结");
            return result;
        }
        return result;
    }

    /**
     * 生成用户信息
     *
     * @param sysUser
     * @param result
     * @return
     */
    private void generateUserInfo(SysUser sysUser, Result<JSONObject> result) {

        // 生成token 12345
        String token = JwtUtil.sign(sysUser.getUsername(), sysUser.getPassword());

        // 设置token令牌缓存
        redisUtil.set(CacheConstant.USER_TOKEN_CACHE + token, token);
        redisUtil.expire(CacheConstant.USER_TOKEN_CACHE + token, JwtUtil.EXPIRE_TIME * 2 / 1000);

        // 设置登录用户缓存
        LoginUser loginUser = new LoginUser();
        BeanUtils.copyProperties(sysUser, loginUser);
        loginUser.setUserInfo(sysUser);
        redisUtil.set(CacheConstant.USER_LOGIN_CACHE + token, loginUser);
        redisUtil.expire(CacheConstant.USER_LOGIN_CACHE + token, JwtUtil.EXPIRE_TIME * 2 / 1000);

        JSONObject obj = new JSONObject();
        obj.put("token", token);
        obj.put("userInfo", sysUser);
        obj.put("roles", sysUserService.queryUserRoles(sysUser.getUsername()));
        obj.put("permissions", sysMenuService.getUserPermissions(sysUser.getUsername()));
        obj.put("dict", sysDictService.queryAllDictItems());
        result.setResult(obj);
        result.success("登录成功");
    }



    /**
     * 退出登录
     *
     * @param request
     * @return
     */
    @ApiOperation("退出登录")
    @PostMapping("/logout")
    public Result<Object> logout(HttpServletRequest request) {
        String token = request.getHeader(CommonConstant.X_ACCESS_TOKEN);
        if (StringUtils.isNotBlank(token)) {
            String username = JwtUtil.getUsername(token);
            if (StringUtils.isNotBlank(username)) {
                SysUser sysUser = sysUserService.getUserByUsername(username);
                if (sysUser != null) {
                    redisUtil.del(CacheConstant.USER_TOKEN_CACHE + token);
                    redisUtil.del(CacheConstant.USER_LOGIN_CACHE + token);
                    SecurityUtils.getSubject().logout();
                }
            }
        }
        return Result.ok("退出登录成功！");
    }

    /**
     * 获取验证码
     *
     * @param key
     * @return
     */
    @ApiOperation("获取验证码")
    @GetMapping("/captcha/{key}")
    public Result<String> captcha(@PathVariable String key) {
        Result<String> result = new Result<String>();
        try {
            String code = RandomUtil.randomString(4);
            String lowerCaseCode = code.toLowerCase();
            String realKey = MD5Util.MD5Encode(lowerCaseCode + key, "utf-8");
            redisUtil.set(realKey, lowerCaseCode, 120);
            String base64 = RandImageUtil.generate(code);
            result.setSuccess(true);
            result.setResult(base64);
        } catch (Exception e) {
            result.error500("获取验证码出错" + e.getMessage());
            e.printStackTrace();
        }
        return result;
    }
}
