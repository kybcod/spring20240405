package com.study.controller;

import com.study.domain.MyBean332;
import com.study.domain.MyBean333;
import com.study.mapper.Mapper04;
import com.study.domain.MyBean331;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.List;

@Controller
@RequestMapping("main33")
@RequiredArgsConstructor
public class Controller33 {
    private final Mapper04 mapper;

    @GetMapping("sub1")
    public void method1(){
        List<MyBean331> obj = mapper.select1();
        obj.forEach(System.out::println);
    }

    @GetMapping("sub2")
    public void method2(){
        List<MyBean332> obj = mapper.select2();
        obj.forEach(System.out::println);
    }

    @GetMapping("sub3")
    public void method3(){
        List<MyBean333> obj = mapper.select3();
        obj.forEach(System.out::println);
    }

    @GetMapping("sub4")
    public void method4(){
        mapper.insert1("hello world","54321","234.12","1990-11-21", "1999-12-12 12:23:21");
    }

    @GetMapping("sub5")
    public void method5(){
        String strVal = "hello mybatis";
        Integer intVal = 7890;
        Double doubleVal = 3.14;
        LocalDate dateVal = LocalDate.parse("1988-01-08");
        LocalDateTime dateTimeVal = LocalDateTime.parse("1977-07-07T12:14:14");
        mapper.insert2(strVal, intVal, doubleVal, dateVal, dateTimeVal);


    }

    @GetMapping("sub6")
    public void method6(){
        String title = "This Is Java";
        String name = "shin";
        Integer age = 40;
        Double price = 18.75;
        LocalDate published = LocalDate.parse("1998-11-18");
        LocalDateTime inserted = LocalDateTime.parse("1990-11-11T11:11:11");
        mapper.insert3(title, name, age, price, published, inserted);
    }

    @GetMapping("sub7")
    public void method7(){
        MyBean332 obj = new MyBean332();
        obj.setStringCol("hello 🙌");
        obj.setIntCol(7890);
        obj.setDateCol(LocalDate.parse("2020-01-08"));
        obj.setDateTimeCol(LocalDateTime.parse("2020-09-09T12:00:15"));
        obj.setDecCol(99.78);

        mapper.insert4(obj);
    }

    @GetMapping("sub8")
    public void method8(){
        MyBean333 obj = new MyBean333();
        obj.setTitle("스프링");
        obj.setName("부트");
        obj.setAge(20);
        obj.setPrice(30.75);
        obj.setPublished(LocalDate.parse("1990-12-31"));
        obj.setInserted(LocalDateTime.parse("1999-12-31T12:01:01"));

        mapper.insert5(obj);
    }

    @GetMapping("sub9")
    public void select9(Model model){
        List<MyBean332> list = mapper.select2();
        model.addAttribute("datas", list);
    }

    @PostMapping("sub9")
    public String insert9(String str,
                        String intValue,
                        String realValue,
                        String dateValue,
                        String dateTimeValue){
        mapper.insert1(str, intValue, realValue, dateValue, dateTimeValue);
        return "redirect:/main33/sub9";
    }

    @GetMapping("sub10")
    public String select10(Model model){
        List<MyBean332> list = mapper.select2();
        model.addAttribute("datas", list);

        return "main33/sub9";
    }

    @PostMapping("sub10")
    public String insert10(String str,
                           Integer intValue,
                           Double realValue,
                           LocalDate dateValue,
                           LocalDateTime dateTimeValue){
        mapper.insert2(str, intValue, realValue, dateValue, dateTimeValue);
        return "redirect:/main33/sub10";
    }

    @GetMapping("sub11")
    public String select11(Model model){
        List<MyBean332> list = mapper.select2();
        model.addAttribute("datas", list);
        return "main33/sub11";
    }

    @PostMapping("sub11")
    public String insert11(MyBean332 data){
//        System.out.println(data);
        mapper.insert4(data);
        return "redirect:/main33/sub11";
    }

    @GetMapping("sub12")
    public void select12(Model model){
        List<MyBean333> list = mapper.select3();
        model.addAttribute("list", list);
    }

    @PostMapping("sub12")
    public String insert12(MyBean333 data, RedirectAttributes rttr){
        int rowCount = mapper.insert5(data);
        if (rowCount > 0){
            rttr.addFlashAttribute("message", data.getTitle()+"책 관련 정보가 추가되었습니다.");
        } else{
            rttr.addFlashAttribute("message","데이터가 추가되지 않았습니다. 다시 한번 확인 부탁드립니다.");
        }

        int rowDelete = mapper.delete1(data.getTitle());
        if (rowDelete > 0){
            rttr.addFlashAttribute("message", data.getTitle()+"책 관련 정보가 삭제되었습니다.");
        } else{
            rttr.addFlashAttribute("message","데이터가 삭제되지 않았습니다. 다시 한번 확인 부탁드립니다.");
        }

        return "redirect:/main33/sub12";

    }

}

