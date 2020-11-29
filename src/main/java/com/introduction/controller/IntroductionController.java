package com.introduction.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/introduction")
public class IntroductionController {

    @GetMapping("/greet")
    public String greet(@RequestParam("name") String name) {
        return "Hello "+name;
    }
}
