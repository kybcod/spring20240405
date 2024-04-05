package com.study.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.context.request.WebRequest;

import java.util.Iterator;

@Controller
@RequestMapping("main4")
public class Controller4 {

    // sub1은 파라미터 정의 X : 아무 파라미터를 넣어도 실행이 됨 없어도 실행이 됨
    // /main4/sub1
    // /main4/sub1?city
    // /main4/sub1?country
    // /main4/sub1?city&country
    // /main4/sub1?city=seoul&country=korea
    @RequestMapping("sub1")
    // WebRequest : 파라미터의 정보가 들어가 있다
    public void sub1(WebRequest request) {
        Iterator<String> names = request.getParameterNames(); //파라미터의 이름

        while (names.hasNext()) {
            String name = names.next();
            System.out.println(name);
        }
    }


    // /main4/sub2?name=son&age=44&city=london&country=uk
    @RequestMapping("sub2")
    public void sub2(WebRequest request) {
        Iterator<String> names = request.getParameterNames();

        while (names.hasNext()) {
            String name = names.next();
//            System.out.println(next);
            String value = request.getParameter(name);  //name과 value 모두 얻어오기
            System.out.println(name + " = " + value);
        }
    }


}
