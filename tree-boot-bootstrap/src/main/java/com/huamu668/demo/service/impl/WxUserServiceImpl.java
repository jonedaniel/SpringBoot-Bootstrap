package com.huamu668.demo.service.impl;

import com.huamu668.demo.domain.WxUser;
import com.huamu668.demo.mapper.WxUserMapper;
import com.huamu668.demo.service.IWxUserService;
import com.huamu668.demo.util.BeanMapUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.Map;

@Service
public class WxUserServiceImpl implements IWxUserService {
    @Autowired
    private WxUserMapper wxUserMapper;

    @Override
    public void register(Map map) {
        WxUser user = (WxUser)BeanMapUtils.getMap2Bean(map, WxUser.class);
        user.setCreateDate(new Date());
        wxUserMapper.insert(user);
    }

    @Override
    public WxUser getUserByOpenId(String openid) {
        return wxUserMapper.selectByOpenId(openid);
    }
}
