package com.library.spring_demo.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class Helloworldcontroller {
    @GetMapping("/")
    public String hello() {
        return "Hello World!";
    }
}
