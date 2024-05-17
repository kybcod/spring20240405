package com.study.domain;

import lombok.Data;

import java.util.List;
import java.util.Map;

@Data
public class MyBean412 {
    private String name;
    private Double height;
    private MyBean411 info;
    private List<String> foods;
    private boolean married;
}
