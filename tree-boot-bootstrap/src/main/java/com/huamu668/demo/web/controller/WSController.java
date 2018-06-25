package com.huamu668.demo.web.controller;

import com.huamu668.demo.domain.WxMessage;
import com.huamu668.demo.util.DateUtils;
import com.huamu668.demo.util.RedisService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.messaging.handler.annotation.MessageMapping;
import org.springframework.messaging.handler.annotation.SendTo;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

@Controller
public class WSController extends BaseController {

    @Autowired
    private RedisService redisService;

    /**
     * 微信推送接口
     *
     * @createDate 2018/6/23
     * @author zmh email: zmhzhaomenghui@gmail.com
     */
    @MessageMapping("/hello")
    @SendTo("/topic/greetings")
    @CrossOrigin
    public String greeting(WxMessage message) throws Exception {
        message.setDate(new SimpleDateFormat("HH:mm:ss").format(new Date()));

        //聊天记录入库
        Map map = new HashMap();
        map.put("image", message.getImage());
        map.put("ret", message.getDate() + " " + message.getInputData());
        redisService.lPush("chatCache", map);

        return message.getDate() + "|" + message.getInputData() + "|" + message.getImage();
    }

    @MessageMapping("/webChat")
    @SendTo("/topic/greetings")
    @CrossOrigin
    public String webChat(String massage) throws Exception {
        return DateUtils.nowDay() + ":" + massage;
    }

    @GetMapping("/chat")
    public String chat() {
        return "chat";
    }
}
