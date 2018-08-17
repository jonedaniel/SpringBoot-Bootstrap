package com.huamu668.demo.domain;

import lombok.Data;

import java.util.Date;

@Data
public class Tree {
    private Long   id;
    private String name;
    private String pinyinName;
    private String intro;
    private Date   updateTime;
    private String spec;
    private String store;
    private String deleteFlg;
    private String sign;
}