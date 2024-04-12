package com.study.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("main16")
public class Controller16 {

    @RequestMapping("sub1")
    public void sub1(){

    }

    @RequestMapping("sub2")
    public String sub2(){
        return "/main16/main/sub2";
    }

    @RequestMapping("sub3")
    public void sub3(){

    }

    @RequestMapping("sub4")
    public void sub4(){

    }

    @RequestMapping("sub5")
    public void sub5(){

    }


}
