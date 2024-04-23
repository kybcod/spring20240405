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
import java.sql.*;

@Controller
@RequestMapping("main29")
public class Controller29 {

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

    @PostMapping("sub1/delete")
    public String method2(@RequestParam("id") Integer id, RedirectAttributes rttr) throws SQLException {
        String sql = """
                DELETE FROM Customers WHERE CustomerID = ?
                """;

        Connection conn = dataSource.getConnection();
        PreparedStatement pstmt = conn.prepareStatement(sql);
        pstmt.setInt(1,id); //첫번째 물음표에 id 넣기
        try (pstmt;conn){
            int rowCount = pstmt.executeUpdate();//영향을 받은 레코드 갯수
            if (rowCount == 1){
                rttr.addFlashAttribute("message", id+"번 고객님이 삭제되었습니다.");
            }else{
                rttr.addFlashAttribute("message", "해당 고객님의 정보 삭제되지 않았습니다.");
            }
        }
        return "redirect:/main29/sub1";
    }


    @GetMapping("sub2")
    public void method3(Integer id, Model model) throws SQLException {

        if (id !=  null){
            String sql = "SELECT * FROM Employees WHERE EmployeeID = ?";

            Connection conn = dataSource.getConnection();
            PreparedStatement preparedStatement = conn.prepareStatement(sql);
            preparedStatement.setInt(1, id);
            ResultSet rs = preparedStatement.executeQuery();

            try (rs;preparedStatement;conn) {
                if (rs.next()){
                    MyBean258Employee employee = new MyBean258Employee();
                    employee.setId(rs.getInt(1));
                    employee.setLastName(rs.getString(2));
                    employee.setFirstName(rs.getString(3));
                    employee.setBirthDate(rs.getString(4));
                    employee.setPhoto(rs.getString(5));
                    employee.setNotes(rs.getString(6));

                    model.addAttribute("employee", employee);
                }
            }
        }

    }

    @PostMapping("sub2/delete")
    public String method4(Integer id, RedirectAttributes rttr) throws SQLException {

        String sql = "DELETE FROM Employees WHERE EmployeeID = ?";

        Connection conn = dataSource.getConnection();
        PreparedStatement pstmt = conn.prepareStatement(sql);
        pstmt.setInt(1,id);
        try (pstmt;conn){
            int rowCount = pstmt.executeUpdate();
            if (rowCount == 1){
                rttr.addFlashAttribute("message", "직원"+id+" 이 삭제되었습니다.");
            }else {
                rttr.addFlashAttribute("message", "해당 직원은 삭제되지 않았습니다.");
            }

        }
        return "redirect:/main29/sub2";
    }


}
