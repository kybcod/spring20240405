package com.study.controller;

import com.study.domain.MyBean241;
import com.study.domain.MyBean242;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

@Controller
@RequestMapping("main24")
public class Controller24 {

    @Autowired
    private DataSource dataSource;

    @GetMapping("sub1")
    public void method1(@ModelAttribute("employees") ArrayList<MyBean241> list) throws Exception {
        String sql = """
                SELECT FirstName, LastName
                FROM Employees
                """;
        Connection conn = dataSource.getConnection();
        Statement stmt = conn.createStatement();
        ResultSet rs = stmt.executeQuery(sql);

        try (conn; stmt; rs) {
            while (rs.next()) {
                MyBean241 bean = new MyBean241();
                bean.setFirstName(rs.getString(1));
                bean.setLastName(rs.getString(2));
                list.add(bean);
            }
        }
    }

    @GetMapping("sub2")
    public void method02(@ModelAttribute("customers")
                             ArrayList<MyBean242> list) throws Exception{
        String sql = """
                SELECT CustomerName, City, Country FROM Customers
                """;
        // DB 연결
        Connection connection = dataSource.getConnection();

        // Select 쿼리를 실행하고 결과로 ResultSet을 얻는다
        Statement statement = connection.createStatement();
        ResultSet resultSet = statement.executeQuery(sql);

        try (connection; statement; resultSet;){
            // resultSet에 저장된 쿼리 결과 순회
            while (resultSet.next()){
                MyBean242 bean242 = new MyBean242();
                bean242.setCustomerName(resultSet.getString(1));
                bean242.setCity(resultSet.getString(2));
                bean242.setCountry(resultSet.getString(3));
                list.add(bean242);
            }
        }
    }

    @GetMapping("sub3")
    public void method3(@ModelAttribute("countries")
            ArrayList<String> list) throws Exception {
        String sql = "SELECT DISTINCT Country FROM Customers";

        Connection connection = dataSource.getConnection();
        Statement statement = connection.createStatement();
        ResultSet resultSet = statement.executeQuery(sql);

        try (connection; statement; resultSet){
            while(resultSet.next()){
                String country = resultSet.getString(1);
                list.add(country);
            }
        }
    }
}
