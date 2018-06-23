package com.huamu668.demo.domain;

import lombok.Data;

import java.util.Date;

@Data
public class WxUser {
    public static final String MACHINE_PATH = "/home/web/wximages/";
    public static final String NET_PATH = "http://huamu668.com/wximages/";

    private Long   id;
    private String unionId;
    private String openId;
    private String city;
    private String country;
    private Byte   gender;
    private String nickName;
    private String province;
    private String avatarUrl;
    private Date   createDate;
    private Date   updateDate;
    private String image;
}