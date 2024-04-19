package com.study.controller;

import com.study.domain.MyBean254Customer;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.sql.DataSource;
import java.sql.*;
import java.util.ArrayList;

@Controller
@RequestMapping("main27")

public class Controller27 {

    @Autowired
    private DataSource dataSource;

    @GetMapping("sub1")
    public String sub1(
            @RequestParam(defaultValue = "1")
            Integer page, Model model) throws SQLException {

//      n페이지 : LIMIT (n-1) * 한 페이지의 게시물 수, 한 페이지의 게시물수

        int offset = (page-1) * 10;


        String sql = """
                SELECT *
                FROM Customers
                ORDER BY CustomerID
                LIMIT ?, 10
                """;

        var list = new ArrayList<MyBean254Customer>();
        Connection conn = dataSource.getConnection();

        //페이지 정보 산출
        //총 레코드 수 조회
        String countSql = "SELECT COUNT(*) FROM Customers";
        Statement stmt = conn.createStatement();
        ResultSet rs1 = stmt.executeQuery(countSql);

        // total : 몇개의 목록이 존재하는지
        int total = 0;
        try (rs1;stmt){
            if (rs1.next()) { //레코드 하나여서 while이 아닌 if로
                total = rs1.getInt(1);
            }
        }

        // 마지막 페이지 번호
        int lastPageNumber = (total-1)/10+1;
        model.addAttribute("lastPageNumber", lastPageNumber);

        // 페이지 링크의 begin, end 산출
        int endPageNumber = (((page -1)/10)+1)*10; //현재 페이지는 requestParameter로 받음(page)
        int beginPageNumber = endPageNumber- 9;

        // endPageNumber가 최종 페이지를 넘을 순 없다.
        endPageNumber = Math.min(endPageNumber, lastPageNumber);

        model.addAttribute("endPageNumber", endPageNumber);
        model.addAttribute("beginPageNumber", beginPageNumber);

        // nextPageNumber : 다음 버튼 클릭 시 이동해야야 하는 페이지
        int nextPageNumber = beginPageNumber + 10;
        if (nextPageNumber <= lastPageNumber) {
            model.addAttribute("nextPageNumber", nextPageNumber);
        }

        // 이전 버튼 클릭 시 이동해야 하는 페이지 prevPageNumber 산출
        int prevPageNumber = beginPageNumber - 10;
        if (prevPageNumber >= 1) {
            model.addAttribute("prevPageNumber", prevPageNumber);
        }

        // 고객 레코드 조회
        PreparedStatement pstmt = conn.prepareStatement(sql);
        pstmt.setInt(1,offset);

        ResultSet rs = pstmt.executeQuery();
        try (rs;pstmt){
            while (rs.next()) {
                MyBean254Customer customer = new MyBean254Customer();

                customer.setId(rs.getInt(1));
                customer.setName(rs.getString(2));
                customer.setContactName(rs.getString(3));
                customer.setAddress(rs.getString(4));
                customer.setCity(rs.getString(5));
                customer.setPostalCode(rs.getString(6));
                customer.setCountry(rs.getString(7));

                list.add(customer);
            }
            model.addAttribute("customerList", list);
        }
        return "main27/sub1";
    }

}
