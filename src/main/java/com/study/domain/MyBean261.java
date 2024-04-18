package com.study.domain;

import lombok.AllArgsConstructor;
import lombok.Data;

import java.util.Date;

@Data
@AllArgsConstructor
public class MyBean261 {
    private Integer id;
    private Integer customerId;
    private Integer employeeId;
    private Date date;
    private Integer shipperId;
}
