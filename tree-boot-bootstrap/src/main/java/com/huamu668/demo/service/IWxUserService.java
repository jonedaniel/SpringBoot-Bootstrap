package com.huamu668.demo.service;

import com.huamu668.demo.domain.WxUser;

import java.util.Map;

public interface IWxUserService {
    void register(Map map);

    WxUser getUserByOpenId(String openid);
}
