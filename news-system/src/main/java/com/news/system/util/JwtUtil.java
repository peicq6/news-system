package com.news.system.util;


import com.auth0.jwt.JWT;
import com.auth0.jwt.algorithms.Algorithm;
import com.auth0.jwt.exceptions.JWTDecodeException;
import com.auth0.jwt.interfaces.DecodedJWT;
import com.auth0.jwt.JWTVerifier;
import com.news.system.entity.LoginUser;
import com.news.system.exception.BootException;
import org.apache.commons.lang3.StringUtils;
import org.apache.shiro.SecurityUtils;

import javax.servlet.http.HttpServletRequest;
import java.util.Date;

/**
 * @Author Scott
 * @Date 2018-07-12 14:23
 * @Desc JWT工具类
 **/
public class JwtUtil {

	/**
	 * Token过期时间30分钟（用户登录过期时间是此时间的两倍，以token在reids缓存时间为准）
 	 */
	public static final long EXPIRE_TIME = 30 * 60 * 1000;


	/**
	 * 校验token是否正确
	 *
	 * @param token  密钥
	 * @param secret 用户的密码
	 * @return 是否正确
	 */
	public static boolean verify(String token, String username, String secret) {
		try {
			// 根据密码生成JWT效验器
			Algorithm algorithm = Algorithm.HMAC256(secret);
			JWTVerifier verifier = JWT.require(algorithm).withClaim("username", username).build();
			// 效验TOKEN
			DecodedJWT jwt = verifier.verify(token);
			return true;
		} catch (Exception exception) {
			return false;
		}
	}

	/**
	 * 获得token中的信息无需secret解密也能获得
	 *
	 * @return token中包含的用户名
	 */
	public static String getUsername(String token) {
		try {
			DecodedJWT jwt = JWT.decode(token);
			return jwt.getClaim("username").asString();
		} catch (JWTDecodeException e) {
			return null;
		}
	}

	/**
	 * 生成签名,5min后过期
	 *
	 * @param username 用户名
	 * @param secret   用户的密码
	 * @return 加密的token
	 */
	public static String sign(String username, String secret) {
		Date date = new Date(System.currentTimeMillis() + EXPIRE_TIME);
		Algorithm algorithm = Algorithm.HMAC256(secret);
		// 附带username信息
		return JWT.create().withClaim("username", username).withExpiresAt(date).sign(algorithm);

	}

	/**
	 * 根据request中的token获取用户账号
	 *
	 * @param request
	 * @return
	 * @throws BootException
	 */
	public static String getUserNameByToken(HttpServletRequest request) throws BootException {
		String accessToken = request.getHeader(CommonConstant.X_ACCESS_TOKEN);
		String username = getUsername(accessToken);
		if (StringUtils.isBlank(username)) {
			throw new BootException("未获取到用户");
		}
		return username;
	}

	/**
	 * 获取当前登录用户信息
	 *
	 * @return
	 */
	public static LoginUser getLoginUser() {
		LoginUser loginUser = (LoginUser) SecurityUtils.getSubject().getPrincipal();
		return loginUser;
	}

	/**
	 * 根据request中的token获取当前登录用户信息
	 *
	 * @return
	 */
	public static LoginUser getLoginUserByToken() {
		HttpServletRequest request = SpringContextUtils.getHttpServletRequest();
		RedisUtil redisUtil = SpringContextUtils.getBean(RedisUtil.class);
		LoginUser loginUser = (LoginUser) redisUtil.get(CacheConstant.USER_LOGIN_CACHE + request.getHeader(CommonConstant.X_ACCESS_TOKEN));
		return loginUser;
	}
}
