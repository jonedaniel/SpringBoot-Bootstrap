package com.huamu668.demo.service.impl;

import com.huamu668.demo.domain.SysLog;
import com.huamu668.demo.mapper.SysLogMapper;
import com.huamu668.demo.service.ISysLogService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class SysLogServiceImpl implements ISysLogService {
    @Autowired
    private SysLogMapper logMapper;

    @Override
    public void saveLog(SysLog sysLog) {
        logMapper.insert(sysLog);
    }
}
