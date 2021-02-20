package com.system.modules.system.service;

import com.system.base.service.BaseService;
import com.system.modules.system.entity.SysLoginLog;
import com.system.modules.system.entity.SysUser;

/**
 * @description: TODO
 * @author: peicq pcq@bjbjxing.com
 * @date: 2021/1/7 17:39
 * @version: v1.0
 */
public interface SysLoginLogService extends BaseService<SysLoginLog> {

    void saveLoginLog(String s, SysUser sysUser);
}
