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

    @GetMapping("/api/someurl2")
    public void method3(){
        System.out.println("Controller40.method3");
    }

    @PostMapping("/api/someurl2")
    public void method4(){
        System.out.println("Controller40.method4");
    }
}
