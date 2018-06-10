package com.huamu668.demo.util;

public class WeChatCode {
    private static final String AppId = "wx210a119ca391730d";
    private static final String AppSecret = "098decba57da1eeb3da0f9f48b5556ad";
    public static final String URL_SESSION_KEY_UNION_ID = "https://api.weixin.qq.com/sns/jscode2session?appid="+AppId +
            "&secret="+AppSecret+"&js_code=JSCODE&grant_type=authorization_code";
}
