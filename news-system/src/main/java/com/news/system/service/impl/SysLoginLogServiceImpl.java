package com.news.system.service.impl;


import com.news.system.base.service.impl.BaseServiceImpl;
import com.news.system.entity.SysLoginLog;
import com.news.system.entity.SysUser;
import com.news.system.mapper.SysLoginLogMapper;
import com.news.system.service.SysLoginLogService;
import com.news.system.util.IPUtils;
import com.news.system.util.SpringContextUtils;
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
