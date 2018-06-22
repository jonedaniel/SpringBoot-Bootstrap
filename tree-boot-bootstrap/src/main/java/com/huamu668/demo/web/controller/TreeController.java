package com.huamu668.demo.web.controller;

import com.huamu668.demo.domain.Tree;
import com.huamu668.demo.service.ITreeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.messaging.handler.annotation.MessageMapping;
import org.springframework.messaging.handler.annotation.SendTo;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.util.HtmlUtils;

import java.text.SimpleDateFormat;
import java.util.Date;

@Controller
public class TreeController {

    @Autowired
    private ITreeService treeService;

    @Value("${server.context-path}")
    private String ctx;

    @ModelAttribute
    public void init(Model model) {
        model.addAttribute("ctx", ctx);
        model.addAttribute("now", new Date());
    }

    @MessageMapping("/hello")
    @SendTo("/topic/greetings")
    public String greeting(String message) throws Exception {
        return new SimpleDateFormat("HH:mm:ss").format(new Date()) + ": " + HtmlUtils.htmlEscape(message);
    }

    @GetMapping("/chat")
    public String chat() {
        return "chat";
    }

    @GetMapping("/")
    public String indexEmpty() {
        return "redirect:/index";
    }

    @GetMapping("/index")
    public String index(Model model) {
        model.addAttribute("list", treeService.getAll());
        return "index";
    }

    @GetMapping("/about")
    public String about(Model model) {
        return "about";
    }

    @GetMapping("/contact")
    public String contact(Model model) {
        return "contact";
    }

    @GetMapping("/gallery")
    public String gallery(Model model) {
        return "gallery";
    }

    @GetMapping("/grid")
    public String grid(Model model) {
        return "grid";
    }

    @GetMapping("/login")
    public String login(Model model) {
        return "login";
    }

    @GetMapping("/registration")
    public String registration(Model model) {
        return "registration";
    }

    @GetMapping("/services")
    public String services(Model model) {
        return "services";
    }

    @GetMapping("/single")
    public String single(Model model, String name) {
        Tree tree = treeService.getByName(name);
        model.addAttribute("tree", tree);
        return "single";

    }
}
