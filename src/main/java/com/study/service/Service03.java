package com.study.service;

import com.study.domain.MyBean254Customer;
import com.study.domain.MyBean258Employee;
import com.study.mapper.Mapper07;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@RequiredArgsConstructor
@Transactional(rollbackFor = Exception.class)
public class Service03 {

    private final Mapper07 mapper;


    public void insertData() {
        MyBean258Employee e = new MyBean258Employee();
        e.setLastName("박");
        e.setFirstName("지성");
        mapper.insert(e);

        System.out.println("e.getId() = " + e.getId()); // 생성된 키값
    }

    public void insertData2() {
        MyBean254Customer c = new MyBean254Customer();
         // 새 고객 데이터 입력하고 다음 출력 코드에서 새 고객의 키가 출력되도록
        c.setName("지성");
        mapper.insertCustomer(c);
        System.out.println("c.getId() = " + c.getId());
    }
}
