package com.huamu668.demo.web.controller;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;

import java.util.Date;

public class BaseController {
    @Value("${server.context-path}")
    private String ctx;

    @ModelAttribute
    public void init(Model model) {
        model.addAttribute("ctx", ctx);
        model.addAttribute("now", new Date());
    }
}
