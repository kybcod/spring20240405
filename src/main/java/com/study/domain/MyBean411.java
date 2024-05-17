package com.study.domain;

import lombok.Data;

@Data
public class MyBean411 {
    private String name;
    private Integer age;

    public String getDesc(){
        return name + "님은 " + age + "살입니다.";
    }
}
