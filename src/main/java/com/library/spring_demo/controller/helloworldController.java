package com.library.spring_demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class helloworldController {

    @GetMapping("/")
    public String helloWorld() {
        return "Hello World!";
    }
    @GetMapping("/h")
    public String helloHtml(Model model) {
        model.addAttribute("message", "Hello World!");
        return "<b>In the end, it's not the years in your life that count. "+
                "It's the life in your years. - Abraham Lincoln</b>";
    }
}
