package com.study.controller;

import com.study.domain.MyBean254Customer;
import com.study.domain.MyBean258Employee;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

@Controller
@RequestMapping("main30")
public class Controller30 {

    @Autowired
    private DataSource dataSource;

    @GetMapping("sub1")
    public void method1(Integer id, Model model) throws SQLException {
        // 고객 번호를 받은 후 조회한 다음에 지울 예정
        if (id !=  null){
            String sql = """
                    SELECT * FROM Customers WHERE CustomerID = ?
                    """;

            Connection conn = dataSource.getConnection();
            PreparedStatement pstmt = conn.prepareStatement(sql);
            pstmt.setInt(1,id); //첫번째 물음표에 id 넣기
            ResultSet rs = pstmt.executeQuery();
            try (rs;pstmt;conn){
                if (rs.next()) {
                    MyBean254Customer bean = new MyBean254Customer();
                    bean.setId(rs.getInt(1));
                    bean.setName(rs.getString(2));
                    bean.setContactName(rs.getString(3));
                    bean.setAddress(rs.getString(4));
                    bean.setCity(rs.getString(5));
                    bean.setPostalCode(rs.getString(6));
                    bean.setCountry(rs.getString(7));

                    model.addAttribute("customer", bean);
                }
            }
        }
    }

    @PostMapping("sub1/update")
    public String update1(MyBean254Customer customer, RedirectAttributes rttr) throws SQLException {
        System.out.println(customer);
        String sql = """
                UPDATE Customers
                SET CustomerName = ?,
                    ContactName = ?,
                    Address = ?,
                    City = ?,
                    PostalCode = ?,
                    Country = ?
                WHERE CustomerID = ?
                """;

        Connection con = dataSource.getConnection();
        PreparedStatement pstmt = con.prepareStatement(sql);

        try (pstmt;con){
            pstmt.setString(1,customer.getName());
            pstmt.setString(2,customer.getContactName());
            pstmt.setString(3,customer.getAddress());
            pstmt.setString(4,customer.getCity());
            pstmt.setString(5,customer.getPostalCode());
            pstmt.setString(6,customer.getCountry());
            pstmt.setInt(7, customer.getId());


            int rowCount = pstmt.executeUpdate();
            if(rowCount > 0){
                rttr.addFlashAttribute("message",customer.getId() + "번 고객이 수정되었습니다.");
            }else{
                rttr.addFlashAttribute("message", "수정되지 않았습니다.");
            }
        }

        rttr.addAttribute("id", customer.getId());

        return "redirect:/main30/sub1";
    }




}
