package com.huamu668.demo;

import com.alibaba.fastjson.JSON;
import com.huamu668.demo.service.IWxUserService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import java.util.Map;
import java.util.UUID;

@RunWith(SpringRunner.class)
@SpringBootTest
public class DemoApplicationTest {
    @Autowired
    private IWxUserService wxUserService;

    @Test
    public void test1() {
        String str = "{\"country\":\"China\",\"unionId\":\"ooREb05PKquuun1ufkhvCUBIeV0s\",\"watermark\":{\"appid\":\"wx210a119ca391730d\",\"timestamp\":1529348395},\"gender\":1,\"province\":\"Guangdong\",\"city\":\"Shenzhen\",\"avatarUrl\":\"https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTJg6qg6zDatPGyKI0fNKcQXyKpN1FC2ntcwqCa306RF78gu7F6vCX9c8udZbaeyc7bel0W1SsuB8A/132\",\"openId\":\"ojgb15YFflL-rmK7UDsGbeEJd268\",\"nickName\":\"赵梦辉\",\"language\":\"zh_CN\"}";
        Map    map = JSON.parseObject(str);
        wxUserService.register(map);
    }

    @Test
    public void test2() {
        System.out.println(UUID.randomUUID().toString());
    }
}

