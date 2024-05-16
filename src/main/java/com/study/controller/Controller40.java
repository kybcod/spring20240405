package com.study.controller;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class Controller40 {

    @GetMapping("/api/someurl")
    public void method1(){
        System.out.println("Controller40.method1");
    }

    @PostMapping("/api/someurl")
    public void method2(){
        System.out.println("Controller40.method2");
    }
}
