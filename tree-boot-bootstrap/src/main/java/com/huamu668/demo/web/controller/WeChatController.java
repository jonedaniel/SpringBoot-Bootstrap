package com.huamu668.demo.web.controller;

import com.alibaba.fastjson.JSON;
import com.huamu668.demo.domain.WxUser;
import com.huamu668.demo.service.IWxUserService;
import com.huamu668.demo.util.AjaxResult;
import com.huamu668.demo.util.HttpUtil;
import com.huamu668.demo.util.WeChatUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.util.Assert;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.HashMap;
import java.util.Map;

/**
 * Title: WeChatController
 * Description: 微信小程序接口
 *
 * @author zhaomenghui93@163.com
 * @createDate 2018/6/9
 */
@RestController
@RequestMapping("/wx")
public class WeChatController {
    /**
     * todo 小程序正式版发布需要
     */

    @Autowired
    private IWxUserService wxUserService;

    @GetMapping("check-token")
    public AjaxResult checkToken(String token) {
        return new AjaxResult(AjaxResult.SUCCESS,"请求成功",null);
    }


    @GetMapping("login")
    public AjaxResult wxLogin(String code) {
        try {
            Assert.hasLength(code, "code为空");
            String strResult = HttpUtil.get(WeChatUtil.WX_LOGIN.replace("JSCODE", code));
            Assert.hasLength(strResult, "请求微信接口出错");
            //从数据库查询是否存在用户，若存在，返回0，并带上token,uid
            String openid = (String) ((Map) JSON.parse(strResult)).get("openid");
            WxUser wxUser = wxUserService.getUserByOpenId(openid);
            /**
             * todo 生成token代码
             */
            if (wxUser != null) {
                Map map = new HashMap();
                map.put("token", "token1");
                map.put("uid", wxUser.getId());
                return new AjaxResult(AjaxResult.WX_TOKEN, "生成Token", map);
            }
            return new AjaxResult(AjaxResult.SUCCESS, "去注册", strResult);
        } catch (Exception e) {
            e.printStackTrace();
            return new AjaxResult(AjaxResult.FAIL, "请求失败", null);
        }
    }

    @GetMapping("/register")
    public AjaxResult register(String code,String encryptedData,String iv) {
        String sessionKey = (String) ((Map) JSON.parse(HttpUtil.get(WeChatUtil.WX_LOGIN.replace("JSCODE", code)))).get("session_key");
        Map userInfo = WeChatUtil.getUserInfo(encryptedData, sessionKey, iv);
        wxUserService.register(userInfo);
        return new AjaxResult();
    }
}
