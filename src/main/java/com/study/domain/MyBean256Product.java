package com.study.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class MyBean256Product {
    private Integer id;
    private String name;
    private Integer supplierId;
    private Integer categoryId;
    private String unit;
    private Double price;
}
