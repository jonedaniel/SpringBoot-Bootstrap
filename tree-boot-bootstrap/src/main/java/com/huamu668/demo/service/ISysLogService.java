package com.huamu668.demo.service;

import com.huamu668.demo.domain.SysLog;

/**
 * Title: ISysLogService
 * Description: 用于将Aop日志入库
 *
 * @author zhaomenghui93@163.com
 * @createDate 2018/6/9
 */
public interface ISysLogService {
    void saveLog(SysLog sysLog);
}
