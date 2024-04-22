package com.study.mapper;

import com.study.domain.MyBean254Customer;
import org.springframework.stereotype.Component;

import java.sql.*;

// Inversion Of Control (IOC)
@Component
public class Mapper01 {
    public MyBean254Customer getCustomerById(Integer id) throws SQLException {
        // 고객 번호를 받은 후 조회한 다음에 지울 예정
        if (id !=  null){
            String sql = """
                    SELECT * FROM Customers WHERE CustomerID = ?
                    """;

            Connection conn = DriverManager.getConnection("jdbc:mariadb://localhost:3306/w3schools", "root", "1234");
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

                    return bean;
                }
            }
        }
        return null;
    }
}
