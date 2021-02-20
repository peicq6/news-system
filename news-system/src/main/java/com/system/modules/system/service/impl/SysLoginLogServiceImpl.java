package com.system.modules.system.service.impl;


import com.system.base.service.impl.BaseServiceImpl;
import com.system.modules.system.entity.SysLoginLog;
import com.system.modules.system.entity.SysUser;
import com.system.modules.system.mapper.SysLoginLogMapper;
import com.system.modules.system.service.SysLoginLogService;
import com.system.modules.system.util.IPUtils;
import com.system.modules.system.util.SpringContextUtils;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.servlet.http.HttpServletRequest;
import java.util.Date;


@Slf4j
@Service
@Transactional(rollbackFor = Exception.class)
public class SysLoginLogServiceImpl extends BaseServiceImpl<SysLoginLogMapper, SysLoginLog> implements SysLoginLogService {

    @Override
    public void saveLoginLog(String loginResult, SysUser sysUser) {
        SysLoginLog loginLog = new SysLoginLog();
        loginLog.setUserId(sysUser.getId());
        loginLog.setUsername(sysUser.getUsername());
        loginLog.setLoginTime(new Date());
        loginLog.setLoginResult(loginResult);
        HttpServletRequest request = SpringContextUtils.getHttpServletRequest();
        String ip = IPUtils.getIpAddr(request);
        loginLog.setIp(ip);
//        loginLog.setLocation(AddressUtil.getCityInfo(ip));
        save(loginLog);
    }
}
