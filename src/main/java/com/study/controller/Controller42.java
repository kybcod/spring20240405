package com.study.controller;

import com.study.domain.MyBean411;
import com.study.domain.MyBean412;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.*;

@Controller
@RequestMapping("/api/main42")
public class Controller42 {

    @GetMapping("sub1")
    @ResponseBody
    public String method1() {
        return "어떤 데이터";
    }

    @GetMapping("sub2")
    @ResponseBody
    public String method2() {
        double random = Math.random();
        if (random < 1.0 / 3) {
            return "가위";
        } else if (random < 2.0 / 3) {
            return "바위";
        }
        return "보";
    }

    @GetMapping("sub3")
    @ResponseBody
    public Map<String, Object> method3(){
        return Map.of("name", "홍길동", "age", 22,
                "married", false,
                "info", Map.of("team", "토트넘", "location", "런던"),
                "item", List.of("컴퓨터", "스마트폰"));
    }

    @GetMapping("sub4")
    @ResponseBody
    public Map<String, Object> method4(){
        return Map.of("city","서울", "height", 188.80,
                "foods", List.of("떡볶이", "순대", "튀김"),
                "desc", Map.of("team", "토트넘", "location", "런던"),
        "hasAccess", true);
    }

    @GetMapping("sub5")
    @ResponseBody
    public MyBean411 method5(){
        MyBean411 obj = new MyBean411();
        obj.setName("홍길동");
        obj.setAge(22);
        return obj; // JSON으로 직렬
    }

    @GetMapping("sub6")
    @ResponseBody
    public MyBean412 method6() {
        MyBean412 myBean412 = new MyBean412();
        myBean412.setFoods(List.of("감자", "고구마"));
        myBean412.setHeight(177.7);
        myBean412.setMarried(false);

        MyBean411 myBean411 = new MyBean411();
        myBean411.setName("흥민");
        myBean411.setAge(55);
        myBean412.setInfo(myBean411);
        myBean412.setName("강인");
        return myBean412;

    }
}
