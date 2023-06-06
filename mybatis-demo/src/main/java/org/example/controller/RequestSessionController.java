package org.example.controller;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
import org.example.entity.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/requestSession")
public class RequestSessionController {

    @RequestMapping("/test01")
    public String test01(HttpSession session, HttpServletRequest request, Integer id) {
        System.out.println("RequestSessionController test01...");
        User user = new User();
        user.setId(id);
        user.setName("zhangsan");
        user.setPassword("123456");
        session.setAttribute("user", user);
        request.setAttribute("name", "武松");
        return "test01";
    }

    @RequestMapping("/test02")
    public String test02(Model model) {
        System.out.println("RequestSessionController test02...");
        model.addAttribute("myname", "东方熬败");
        return "test01";
    }

    @RequestMapping("/test03")
    public ModelAndView test03() {
        System.out.println("RequestSessionController test03...");
        ModelAndView mv = new ModelAndView();
        mv.setViewName("forward:/test01.jsp");
        mv.addObject("age", 30);
        return mv;
    }
}
