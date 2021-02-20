package com.system.config.shiro;

import org.apache.shiro.authc.AuthenticationToken;

/**
 * @description: TODO
 * @author: peicq pcq@bjbjxing.com
 * @date: 2021/1/7 11:57
 * @version: v1.0
 */
public class JwtToken implements AuthenticationToken {

    private static final long serialVersionUID = 1L;
    private String token;

    public JwtToken(String token) {
        this.token = token;
    }

    @Override
    public Object getPrincipal() {
        return token;
    }

    @Override
    public Object getCredentials() {
        return token;
    }
}
