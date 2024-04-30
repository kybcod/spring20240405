package com.study.controller;


import com.study.domain.Mapper05;
import com.study.service.Service01;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;
import java.util.Map;


@Controller
@RequestMapping("main34")
@RequiredArgsConstructor
public class Controller34 {

    private final Service01 service;

    // 해당 년,월의 직원별 매출액 조회
    // /main34/sub1?year=1997&month=7
    @GetMapping("sub1")
    public void method1(Integer year, Integer month, Model model){
        List<Mapper05.EmployeeIncome> value = service.employeeIncomeList(year, month);
        model.addAttribute("incomeList", value);
        model.addAttribute("year", year);
        model.addAttribute("month", month);
    }


    // 해당월의 고객별 구매금액 조회(구매금액이 높은 순)
    // /main34/sub2?year=1996&month=7
    @GetMapping("sub2")
    public void method3(Integer year, Integer month, Model model){
        List<Map<String, Object>> customerIncomeList = service.customerIncomeList(year, month);
        model.addAttribute("incomeList", customerIncomeList);
        model.addAttribute("year", year);
        model.addAttribute("month", month);
    }

}
