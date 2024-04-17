package com.study.controller;

import com.study.domain.MyBean251;
import com.study.domain.MyBean252;
import com.study.domain.MyBean254;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.sql.DataSource;
import java.sql.*;
import java.util.ArrayList;

@Controller
@RequestMapping("main25")
public class Controller25 {
    @Autowired
    private DataSource dataSource;

    @GetMapping("sub1")
    public void method1(@RequestParam(value = "name", required = false)
                            String searchName, Model model) throws SQLException {
        var list = new ArrayList<MyBean251>();
        String sql = STR."SELECT * FROM Employees WHERE LastName = '\{searchName}'";

        //jdk 21 이전
//        String sql = """
//                SELECT *
//                FROM Employees
//                WHERE LastName = '""" + searchName + "'";

        Connection conn = dataSource.getConnection();
        Statement stmt = conn.createStatement();
        ResultSet rs = stmt.executeQuery(sql);

        try (rs; stmt; conn) {
            while (rs.next()) {
                String id = rs.getString(1);
                String lastName = rs.getString(2);
                String firstName = rs.getString(3);
                String birthDate = rs.getString(4);
                String photo = rs.getString(5);
                String notes = rs.getString(6);

                MyBean251 obj
                        = new MyBean251(id, lastName, firstName, birthDate, photo, notes);
                list.add(obj);
            }

        }
        model.addAttribute("employees", list);
    }

    @GetMapping("sub2")
    public void method2(@RequestParam(value = "name", required = false) String search,
                        @ModelAttribute("products") ArrayList<MyBean252> list) throws SQLException {

        String sql = STR."""
                SELECT * FROM Products WHERE ProductName LIKE '%\{search}%'
                """;

        Statement statement = dataSource.getConnection().createStatement();
        ResultSet resultSet = statement.executeQuery(sql);

        try(resultSet; statement){
            while (resultSet.next()) {
                Integer id = resultSet.getInt(1);
                String name = resultSet.getString(2);
                String unit = resultSet.getString(5);
                Double price = resultSet.getDouble(6);

                MyBean252 bean252 = new MyBean252(id, name, unit, price);
                list.add(bean252);
            }
        }
    }

    @GetMapping("sub3")
    public void method3(String search,
                        @ModelAttribute("products") ArrayList<MyBean252> list) throws SQLException {
        String sql = """
                SELECT * FROM Products WHERE ProductName = ?
                """;

        Connection connection = dataSource.getConnection();
        PreparedStatement pstmt = connection.prepareStatement(sql);
        // 첫번째 파라미터는 sql의 ?위치, 두번쨰 파라미터는 해당 위치에 넣을 값
        pstmt.setString(1, search);

        ResultSet resultSet = pstmt.executeQuery();
        try(resultSet; connection; pstmt){
            while (resultSet.next()) {
                MyBean252 row = new MyBean252(resultSet.getInt(1),
                        resultSet.getString(2),
                        resultSet.getString(5),
                        resultSet.getDouble(6));
                list.add(row);
            }
        }
    }

    @GetMapping("sub4")
    public void method4(@ModelAttribute("customers") ArrayList<MyBean254> list,
                        String name) throws SQLException {

        String sql = "SELECT * FROM Customers WHERE CustomerName = ?";

        PreparedStatement preparedStatement = dataSource.getConnection().prepareStatement(sql);
        preparedStatement.setString(1, name);
        ResultSet resultSet = preparedStatement.executeQuery();

        try(resultSet; preparedStatement){
            while(resultSet.next()){
                Integer id = resultSet.getInt(1);
                String customerName = resultSet.getString(2);
                String contactName = resultSet.getString(3);
                String address = resultSet.getString(4);
                String city = resultSet.getString(5);
                String code = resultSet.getString(6);
                String country = resultSet.getString(7);


                MyBean254 bean = new MyBean254(id, customerName, contactName, address, city, code, country);
                list.add(bean);
            }
        }

    }

}
