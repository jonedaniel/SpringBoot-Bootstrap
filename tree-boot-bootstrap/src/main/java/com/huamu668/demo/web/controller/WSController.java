package com.huamu668.demo.web.controller;

import org.springframework.messaging.handler.annotation.MessageMapping;
import org.springframework.messaging.handler.annotation.SendTo;
import org.springframework.stereotype.Controller;
import org.springframework.util.Assert;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;

import java.text.SimpleDateFormat;
import java.util.Date;

@Controller
public class WSController extends BaseController{

    @MessageMapping("/hello")
    @SendTo("/topic/greetings")
    @CrossOrigin
    public String greeting(String message) throws Exception {
        Assert.hasLength(message,"不能收发空信息");
        return new SimpleDateFormat("HH:mm:ss").format(new Date()) + "= " + message;
    }

    @GetMapping("/chat")
    public String chat() {
        return "chat";
    }
}
