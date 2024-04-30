package com.study.service;

import com.study.domain.MyBean258Employee;
import com.study.mapper.Mapper08;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@RequiredArgsConstructor
@Transactional(rollbackFor = Exception.class)
public class Service04 {

    private final Mapper08 mapper;


    public void action1() {
        mapper.query1();
    }

    public void action2() {
        MyBean258Employee e = new MyBean258Employee();
//        e.setLastName("흥민");
        mapper.query2(e);
    }

    public void action3() {
        MyBean258Employee e = new MyBean258Employee();
        e.setFirstName("lee");
        mapper.query3(e);
    }

    public void action4() {
        MyBean258Employee employee = new MyBean258Employee();
        employee.setFirstName("lee");
        employee.setFirstName("kim");
//        값을 넣지 않으면 Null
        mapper.query4(employee);
    }

    public void action5() {
        MyBean258Employee employee = new MyBean258Employee();
        employee.setLastName("lee");
        employee.setFirstName("hm");
        mapper.query5(employee);
    }

    public void action6(String keyword) {
        List<MyBean258Employee> employees = mapper.query6(keyword);
        employees.forEach(System.out::println);
    }

    public void action7() {
        mapper.query7();
    }
}
