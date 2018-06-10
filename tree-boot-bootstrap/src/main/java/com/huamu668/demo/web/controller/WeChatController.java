package com.huamu668.demo.web.controller;

import com.huamu668.demo.util.HttpUtil;
import com.huamu668.demo.util.WeChatCode;
import org.springframework.util.Assert;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * Title: WeChatController
 * Description: 微信小程序接口
 *
 * @author zhaomenghui93@163.com
 * @createDate 2018/6/9
 */
@RestController
@RequestMapping("/wc")
public class WeChatController {
    /**
     * todo 小程序正式版发布需要
     */



    @RequestMapping("login")
    public Object receiveCode(String code) {
        Assert.hasLength(code,"code为空");
        String unionIdURL = WeChatCode.URL_SESSION_KEY_UNION_ID.replace("JSCODE", code);
        String strResult          = HttpUtil.get(unionIdURL);
        Assert.hasLength(strResult,"请求微信接口出错");
        System.out.println(strResult);
        return strResult;
    }
}
