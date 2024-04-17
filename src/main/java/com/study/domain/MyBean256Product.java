package com.study.domain;

import lombok.AllArgsConstructor;
import lombok.Data;

@Data
@AllArgsConstructor
public class MyBean256Product {
    private Integer id;
    private String name;
    private Integer supplierId;
    private Integer categoryId;
    private String unit;
    private Double price;
}
