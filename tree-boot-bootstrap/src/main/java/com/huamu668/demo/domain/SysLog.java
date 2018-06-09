package com.huamu668.demo.domain;

import lombok.Data;

import java.util.Date;

@Data
public class SysLog {
    private Long   id;
    private Date   requestTime;
    private String requestMethod;
    private String requestUrl;
    private String ip;
    private Long   costTime;
    private String status;
}