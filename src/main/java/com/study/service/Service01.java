package com.study.service;

import com.study.domain.Mapper05;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class Service01 {
    private final Mapper05 mapper05;

    public List<Mapper05.EmployeeIncome> employeeIncomeList(Integer year, Integer month){
        String from = "%d-%02d-01".formatted(year, month);
        String to = "%d-%02d-31".formatted(year, month);

        return mapper05.selectIncomeList(from, to);
    }

    public List<Mapper05.CustomerIncome> customerIncomeList(Integer year, Integer month){
        String from = "%d-%02d-01".formatted(year, month);
        String to = "%d-%02d-31".formatted(year, month);
        return mapper05.selectCustomerIncomeList(from, to);
    }
}
