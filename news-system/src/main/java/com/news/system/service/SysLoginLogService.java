package com.news.system.service;

import com.news.system.base.service.BaseService;
import com.news.system.entity.LoginUser;
import com.news.system.entity.SysLoginLog;
import com.news.system.entity.SysUser;

/**
 * @description: TODO
 * @author: peicq pcq@bjbjxing.com
 * @date: 2021/1/7 17:39
 * @version: v1.0
 */
public interface SysLoginLogService extends BaseService<SysLoginLog> {

    void saveLoginLog(String s, SysUser sysUser);
}
