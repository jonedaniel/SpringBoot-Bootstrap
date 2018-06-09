package com.huamu668.demo.web.aop;

import com.huamu668.demo.domain.SysLog;
import com.huamu668.demo.service.ISysLogService;
import com.huamu668.demo.util.BeanMapUtils;
import com.huamu668.demo.util.UserContext;
import lombok.extern.slf4j.Slf4j;
import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import javax.servlet.http.HttpServletRequest;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.concurrent.ConcurrentHashMap;

/**
 * Title: SystemLogAspect
 * Description: Aop日志记录工具类
 *
 * @author zhaomenghui93@163.com
 * @createDate 2018/6/9
 */
@Aspect
@Component
@Slf4j
public class SysLogAspect {
    private final static String pointCut = "(execution(public * com.huamu668.demo.web.controller.*.*(..))"+
                    "&& !execution(public *  com.huamu668.demo.web.controller.*.init(..)))";

    private ConcurrentHashMap<String, Object> map = new ConcurrentHashMap();

    @Autowired
    private ISysLogService logService;

    public SysLogAspect() {
        log.warn(">>>>>>>>>>>>>>>>>>>AOP日志初始化<<<<<<<<<<<<<<<<<<<<<");
    }

    @Before(pointCut)
    public void doBefore(JoinPoint joinPoint) {
        HttpServletRequest request = UserContext.getRequest();
        log.warn("\n请求开始>>>>>\n" +
                        "请求的链接={},\n" +
                        "请求的接口={}，\n" +
                        "参数={},\n" +
                        "ip={},\n" +
//                        "username={}\n" +
                        "sql:",
                request.getRequestURL(),
                joinPoint.getSignature().getDeclaringTypeName() + "." + joinPoint.getSignature().getName(),
                joinPoint.getArgs(),
                UserContext.getIpAddress());
//                UserContext.getUsername());

        map.put("requestTime", new SimpleDateFormat("yyyy-MM-dd HH:mm:ss ").format(new Date()));
        map.put("requestMethod", joinPoint.getSignature().getDeclaringTypeName() + "." + joinPoint.getSignature().getName());
        map.put("requestUrl",request.getRequestURL());
        map.put("ip", UserContext.getIpAddress());
        map.put("startTime", System.currentTimeMillis());
    }

    @After(pointCut)
    public void doAfter() {
    }

    @AfterReturning(returning = "result", pointcut = pointCut)
    public void doAfterReturning(Object result) {
        log.warn("\n返回结果={}"+
                        "\n耗时={}"+
                        "\n<<<<<请求结束",
                    result == null ? "null" : result,
                    System.currentTimeMillis() - (Long)map.get("startTime")
        );
        map.put("costTime", System.currentTimeMillis() - (Long) map.get("startTime"));
        map.put("status", "success");
        logService.saveLog((SysLog) BeanMapUtils.getMap2Bean(map,SysLog.class));
    }

    @AfterThrowing(value = pointCut, throwing = "e")
    public void afterThrowing(Throwable e) {
        log.error("异常全限定名{},异常message:{},"
                        +"\n耗时{}"
                        + "\n<<<<<请求结束",
                e.getClass().getName(),e.getMessage(),
                System.currentTimeMillis() - (Long)map.get("startTime"));

        map.put("costTime", System.currentTimeMillis() - (Long) map.get("startTime"));
        map.put("status", "exception");
        logService.saveLog((SysLog) BeanMapUtils.getMap2Bean(map,SysLog.class));
    }
}

