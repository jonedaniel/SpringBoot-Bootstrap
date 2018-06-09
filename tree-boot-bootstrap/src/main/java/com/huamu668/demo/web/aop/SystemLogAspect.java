package com.huamu668.demo.web.aop;

import com.huamu668.demo.util.AjaxResult;
import com.huamu668.demo.util.UserContext;
import lombok.extern.slf4j.Slf4j;
import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.*;
import org.springframework.stereotype.Component;

import javax.servlet.http.HttpServletRequest;
import java.util.LinkedHashMap;
import java.util.Map;
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
public class SystemLogAspect {
    private final static String pointCut = "(execution(public * com.huamu668.demo.web.controller.*.*(..)))";
//                    "|| execution(public * com.huamu668.hmpc.config.ErrorPageController.*(..)))";

    private ConcurrentHashMap<String, Long> timeMap = new ConcurrentHashMap();

    public SystemLogAspect() {
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


        timeMap.put("startTime", System.currentTimeMillis());
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
                    System.currentTimeMillis() - timeMap.get("startTime")
        );
    }

    @AfterThrowing(value = pointCut, throwing = "e")
    public void afterThrowing(Throwable e) {
        log.error("异常全限定名{},异常message:{},"
                        +"\n耗时{}"
                        + "\n<<<<<请求结束",
                e.getClass().getName(),e.getMessage(),
                System.currentTimeMillis()-timeMap.get("startTime"));
    }


    private Map addLogMap(String method, AjaxResult rr, Throwable e) {
        Map<Object, Object> map     = new LinkedHashMap<>();
        HttpServletRequest  request = UserContext.getRequest();
        /**
         * todo 日志入库
         */
        return map;
    }
}

