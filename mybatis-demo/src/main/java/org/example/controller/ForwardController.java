package org.example.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller("jump")
public class ForwardController {
    @RequestMapping("/test01")
    public String test01() {
        System.out.println("ForwardController test01...");
        // return "regist";
        // return "forward:/jump/test02";
        return "forward:test02";
    }

    @RequestMapping("/test02")
    public String test02() {
        System.out.println("ForwardController test02...");
        return "forward:/regist.jsp";
    }

    @RequestMapping("/test03")
    public String test03() {
        System.out.println("ForwardController test03...");
//        return "redirect:/regist.jsp";
//        return "redirect:/jump/test02";
        return "redirect:test02";
    }
}
