package com.study.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.Arrays;


@Controller
@RequestMapping("main6")
public class Controller06 {

    @RequestMapping("sub1")
    public void method1() {
        System.out.println("Controller06.method1");
    }

    //main6/sub2?abc=son&qwe=56ap
    //main6/sub2?qwe=56
    // main6/sub2?abc=lee
    //main6/sub2
    @RequestMapping("sub2")
    public void method2(@RequestParam(value = "abc", required = false) String param1,
                        @RequestParam(value = "qwe", required = false) Integer pram2) {
        System.out.println("Controller06.method2");
        System.out.println("param1 = " + param1);
        System.out.println("pram2 = " + pram2);

    }

    // main6/sub3?name=kim&age=44
    // main6/sub3?age=44
    // main6/sub3?name=kim
    @RequestMapping("sub3")
    public void method3(@RequestParam(value = "name", required = false, defaultValue = "None") String param1,
                        @RequestParam(value = "age", required = false, defaultValue = "0") Integer pram2) {
        System.out.println("Controller06.method3");
        System.out.println("param1 = " + param1);
        System.out.println("pram2 = " + pram2);
    }

    // main6/sub4?name=손흥민&age=33
    // main6/sub4?name=이강인
    // 파라미터와 변수명이 같으면 value값 생략 가능
    // 바인딩 : request 값을 메소드 파라미터 값에 넣어주는 것
    @RequestMapping("sub4")
    public void method4(@RequestParam(required = false) String name,
                        @RequestParam(required = false) Integer age) {
        System.out.println("name = " + name + ", age = " + age);
    }

    // /main6/sub5?address=shinchon&city=seoul
    // /main6/sub5?city=busan
    // /main6/sub5?address=강남

    @RequestMapping("sub5")
    public void method5(@RequestParam(required = false) String address,
                        @RequestParam(required = false) String city) {
        System.out.println("address = " + address + ", city = " + city);
    }


    // main6/sub6?address=강남&city=서울
    // main6/sub6?address=강남
    // main6/sub6?city=서울
    @RequestMapping("sub6")
    public void method6(String address, String city) {
        System.out.println("address = " + address + ", city = " + city);
    }

    // main6/sub7?name=흥민&age=77
    // main6/sub7?age=77
    // main6/sub7?name=흥민
    // 메소드 ArgumentType이 기본타입(wrapper)포함, String(의 배열) 이면 @RequestParam으로 간주됨
    @RequestMapping("sub7")
    public void method7(String name, Integer age) {
        System.out.println("name = " + name);
        System.out.println("age = " + age);
    }

    // main6/sub8?name=흥민&address=런던&address=서울
    @RequestMapping("sub8")
    public void method8(String name, String[] address) {
        System.out.println("name = " + name);
        System.out.println("address = " + Arrays.toString(address));
    }

    // main6/sub9?age=33&age=44
    // main6/sub9?city=서울&city=부산
    // main6/sub9?age=33&age=44&city=서울&city=부산
    @RequestMapping("sub9")
    public void method9(Integer[] age, String[] city) {
        System.out.println("Arrays.toString(age) = " + Arrays.toString(age));
        System.out.println("Arrays.toString(city) = " + Arrays.toString(city));
    }

}
