package com.study.controller;

import com.study.domain.MyBean091;
import com.study.domain.MyBean092;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("main9")
public class Controller09 {

    @RequestMapping("sub1")
    public void sub1(Model model) {
        MyBean091 myBean09 = new MyBean091();
        model.addAttribute("person", myBean09);

        // person attribute는 name, age property가 있다
    }

    @RequestMapping("sub2")
    public void sub2(Model model) {
        MyBean092 obj = new MyBean092();
        obj.setAge(20);
        obj.setName("흥민");

        MyBean092 obj2 = new MyBean092();
        obj2.setAge(60);
        obj2.setName("차범근");

        model.addAttribute("person", obj);
        model.addAttribute("person2", obj2);
    }


}
