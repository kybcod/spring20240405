package com.study.controller;

import com.study.domain.MyBean254Customer;
import com.study.domain.MyBean258Employee;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.ArrayList;

@Controller
@RequestMapping("main28")
public class Controller28 {

    @Autowired
    private DataSource dataSource;

    // URL에 엔터하면 GET 방식
    @GetMapping("sub1")
    public void sub1() {

    }

    // 등록(submit) 버튼을 누르면 Post 방식
    @PostMapping("sub1")
    public String sub2(MyBean254Customer customer, RedirectAttributes rttr) throws SQLException {
        System.out.println("customer = " + customer);

        String sql = """
                INSERT INTO Customers (CustomerName, ContactName, Address, City, PostalCode, Country)
                VALUES (?,?,?,?,?,?);
                """;

        Connection connection = dataSource.getConnection();
        PreparedStatement pstmt = connection.prepareStatement(sql);
        try (pstmt; connection;){
            pstmt.setString(1, customer.getName());
            pstmt.setString(2, customer.getContactName());
            pstmt.setString(3, customer.getAddress());
            pstmt.setString(4, customer.getCity());
            pstmt.setString(5, customer.getPostalCode());
            pstmt.setString(6, customer.getCountry());

            int rowCount = pstmt.executeUpdate();
            if (rowCount == 1) {
                rttr.addFlashAttribute("message", "새 고객이 등록되었습니다.");
            }
        }
        return "redirect:/main28/sub1"; // 한번 요청이 끝나고 그 뒤에는 GET
    }

    @GetMapping("sub2")
    public void sub3(){

    }

    @PostMapping("sub2")
    public String sub3(MyBean258Employee employee, RedirectAttributes rttr) throws SQLException {
        String sql = "INSERT INTO Employees (LastName, FirstName, BirthDate, Photo, Notes)\n" +
                "VALUES (?,?,?,?,?)";

        Connection conn = dataSource.getConnection();
        PreparedStatement pstmt = conn.prepareStatement(sql);
        try (pstmt; conn;){
            pstmt.setString(1, employee.getLastName());
            pstmt.setString(2, employee.getFirstName());
            pstmt.setString(3, employee.getBirthDate());
            pstmt.setString(4, employee.getPhoto());
            pstmt.setString(5, employee.getNotes());

            int rowCount = pstmt.executeUpdate();
            if (rowCount == 1) {
                rttr.addFlashAttribute("message", "새 직원의 정보가 등록되었습니다.");
            }
        }

        return "redirect:/main28/sub2";
    }




}
