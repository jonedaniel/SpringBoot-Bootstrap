package com.huamu668.demo.common;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class AjaxResult {
    public final static Integer SUCCESS = 0;
    public final static Integer FAIL = 1;
    public final static Integer WX_TOKEN = 2;

    private Integer code = SUCCESS;
    private String desc = "请求成功";
    private Object data = null;

    public AjaxResult(Integer code, String desc) {
        this.code = code;
        this.desc = desc;
    }
}
