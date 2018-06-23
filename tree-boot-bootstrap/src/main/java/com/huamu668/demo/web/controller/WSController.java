package com.huamu668.demo.web.controller;

import com.huamu668.demo.domain.WxMessage;
import org.springframework.messaging.handler.annotation.MessageMapping;
import org.springframework.messaging.handler.annotation.SendTo;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;

import java.text.SimpleDateFormat;
import java.util.Date;

@Controller
public class WSController extends BaseController{

    /**
     *  煞笔微信程序员，回家要饭去吧。
     * @createDate 2018/6/23
     * @author zmh email: zmhzhaomenghui@gmail.com
     */
    @MessageMapping("/hello")
    @SendTo("/topic/greetings")
    @CrossOrigin
    public String greeting(WxMessage message) throws Exception {
        message.setDate(new SimpleDateFormat("HH:mm:ss").format(new Date()));
        return message.getDate()+","+message.getInputData()+","+message.getImage();
    }

    @GetMapping("/chat")
    public String chat() {
        return "chat";
    }
}
