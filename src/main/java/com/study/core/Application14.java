package com.study.core;

import lombok.Getter;
import org.springframework.beans.factory.BeanFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.ConfigurableApplicationContext;
import org.springframework.stereotype.Component;

@SpringBootApplication
public class Application14 {
    public static void main(String[] args) {
        BeanFactory bf = SpringApplication.run(Application14.class, args);
        MyClass141 bean = bf.getBean(MyClass142.class).getField();
        System.out.println("bean = " + bean);
    }

}

@Component
class MyClass141{

}

@Getter
@Component
class MyClass142{
    private MyClass141 field;

    @Autowired
    public void setField(MyClass141 field) {
        this.field = field;
    }
}
