package com.study.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.Map;

@Controller
@RequestMapping("/api/main41")
public class Controller41 {

    @PostMapping("sub1")
    public void sub1(@RequestBody Map<String, Object> map) {
        // 역직렬화(JSON -> Map)
        System.out.println("map = " + map);
    }





}