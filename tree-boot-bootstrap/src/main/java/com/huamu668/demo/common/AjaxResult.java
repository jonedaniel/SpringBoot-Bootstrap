package com.huamu668.demo.common;

import lombok.Data;

@Data
public class AjaxResult {
    public final static Integer SUCCESS = 0;
    public final static Integer FAIL = 1;
    public final static Integer WX_TOKEN = 2;

    private Integer code = SUCCESS;
    private String desc = "请求成功";
    private Object data = null;

    public AjaxResult() {
    }

    public AjaxResult(Integer code, String desc) {
        this.code = code;
        this.desc = desc;
    }

    public AjaxResult(Integer code, String desc, Object data) {
        this.code = code;
        this.desc = desc;
        this.data = data;
    }
}
