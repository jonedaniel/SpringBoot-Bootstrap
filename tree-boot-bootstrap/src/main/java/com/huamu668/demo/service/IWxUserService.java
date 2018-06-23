package com.huamu668.demo.service;

import com.huamu668.demo.domain.WxUser;

import java.io.IOException;
import java.util.Map;

public interface IWxUserService {
    void register(Map map) throws IOException;

    WxUser getUserByOpenId(String openid);
}
