package com.huamu668.demo.web.controller;

import com.huamu668.demo.domain.Tree;
import com.huamu668.demo.service.ITreeService;
import com.huamu668.fastdfsdemo.util.FastDFSClient;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.Date;

@Controller
public class IndexController {

    @Autowired
    private FastDFSClient fastDFSClient;
    @Autowired
    private ITreeService treeService;

    @Value("${server.context-path}")
    private String ctx;

    @ModelAttribute
    public void init(Model model) {
        model.addAttribute("ctx",ctx);
        model.addAttribute("now", new Date());
    }

    @RequestMapping(method = RequestMethod.GET,value = "/index")
    public String index(Model model) {
        model.addAttribute("list", treeService.getAll());
        return "index";
    }

    @RequestMapping(method = RequestMethod.GET,value = "/about")
    public String about(Model model) {
        return "about";
    }

    @RequestMapping(method = RequestMethod.GET,value = "/contact")
    public String contact(Model model) {
        return "contact";
    }

    @RequestMapping(method = RequestMethod.GET,value = "/gallery")
    public String gallery(Model model) {
        return "gallery";
    }

    @RequestMapping(method = RequestMethod.GET,value = "/grid")
    public String grid(Model model) {
        return "grid";
    }

    @RequestMapping(method = RequestMethod.GET,value = "/login")
    public String login(Model model) {
        return "login";
    }

    @RequestMapping(method = RequestMethod.GET,value = "/registration")
    public String registration(Model model) {
        return "registration";
    }

    @RequestMapping(method = RequestMethod.GET,value = "/services")
    public String services(Model model) {
        return "services";
    }

    @RequestMapping(method = RequestMethod.GET,value = "/single")
    public String single(Model model,String name) {
        Tree tree = treeService.getByName(name);
        model.addAttribute("tree", tree);
        return "single";

    }
}
