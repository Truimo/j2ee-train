package org.example.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/hello")
public class HelloController {

    @RequestMapping("/test01")
    public String test01() {
        System.out.println("HelloController test01...");
        return "index";
    }
}
