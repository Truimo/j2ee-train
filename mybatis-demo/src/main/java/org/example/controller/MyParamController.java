package org.example.controller;

import org.example.entity.Person;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.Date;

@Controller
@RequestMapping("/param")
public class MyParamController {

    @RequestMapping("/param01")
    public String param01(Integer id, String name, Boolean gender, @DateTimeFormat(pattern = "yyyy-MM-dd") Date birthday) {
        System.out.println("MyParamController param01...");
        System.out.printf("id = %d, name = %s, gender = %s, birthday = %s", id, name, gender, birthday);
        return "index";
    }

    @RequestMapping("/param02")
    public String param02(Person person) {
        System.out.println("MyParamController param02...");
        System.out.println(person);
        return "index";
    }

    @RequestMapping("/param03")
    public String param03(String[] hobby) {
        System.out.println("MyParamController param03...");
        System.out.println(hobby);
        return "index";
    }

    @RequestMapping("/param04/{username}")
    public String param03(@PathVariable("username") String name) {
        System.out.println("MyParamController param03...");
        System.out.println(name);
        return "index";
    }
}
