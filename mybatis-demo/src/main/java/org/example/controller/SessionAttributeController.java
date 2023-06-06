package org.example.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;

@Controller
@SessionAttributes({"gender", "name", "age"})
@RequestMapping("/sessionAttribute")
public class SessionAttributeController {
    @RequestMapping("/test01")
    public String test01(Model model) {
        model.addAttribute("gender", true);
        model.addAttribute("name", "张无忌");
        return "test01";
    }

    @RequestMapping("/test02")
    public String test02(SessionStatus sessionStatus) {
        sessionStatus.setComplete();
        return "test01";
    }
}
