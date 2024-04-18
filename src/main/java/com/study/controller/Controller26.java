package com.study.controller;

import com.study.domain.MyBean254Customer;
import com.study.domain.MyBean256Product;
import com.study.domain.MyBean261;
import com.study.domain.MyBean263Category;
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
@RequestMapping("main26")
public class Controller26 {

    private final DataSource dataSource;

    @Autowired
    public Controller26(DataSource dataSource){
        this.dataSource = dataSource;
    }

    //RequestParameter 생략(start,end)
    @GetMapping("sub1")
    public String method1(String start, String end, Model model) throws SQLException {

        var list = new ArrayList<MyBean261>();
        String sql = "SELECT * FROM Orders WHERE OrderDate BETWEEN ? AND ?";

        PreparedStatement pstmt = dataSource.getConnection().prepareStatement(sql);
        pstmt.setString(1, start);
        pstmt.setString(2, end);
        ResultSet rs = pstmt.executeQuery();

        try (rs;pstmt){
            while(rs.next()) {
                MyBean261 bean = new MyBean261(rs.getInt(1),
                        rs.getInt(2), rs.getInt(3), rs.getDate(4),
                        rs.getInt(5)) ;
                list.add(bean);
            }
        }

        model.addAttribute("orderList", list);
        model.addAttribute("prevStart", start);
        model.addAttribute("prevEnd", end);

        return "main26/sub1OrderList";
    }

    @GetMapping("sub2")
    public String method2(String[] country, Model model) throws Exception {
        Connection conn = dataSource.getConnection();

        if (country != null && country.length > 0) {
            String questionMarks = "";
            for (int i = 0; i < country.length; i++) {
                questionMarks = questionMarks + "?";
                if (i != country.length - 1) {
                    questionMarks = questionMarks + ",";
                }
            }
            String customerSql = STR."""
                SELECT *
                FROM Customers
                WHERE Country IN (\{questionMarks})
                """;

            var customerList = new ArrayList<MyBean254Customer>();
            PreparedStatement pstmt = conn.prepareStatement(customerSql);
            for (int i = 0; i < country.length; i++) {
                pstmt.setString((i + 1), country[i]);
            }
            ResultSet resultSet = pstmt.executeQuery();
            try (pstmt; resultSet) {

                while (resultSet.next()) {
                    MyBean254Customer data = new MyBean254Customer();
                    data.setId(resultSet.getInt(1));
                    data.setName(resultSet.getString(2));
                    data.setContactName(resultSet.getString(3));
                    data.setAddress(resultSet.getString(4));
                    data.setCity(resultSet.getString(5));
                    data.setPostalCode(resultSet.getString(6));
                    data.setCountry(resultSet.getString(7));
                    customerList.add(data);
                }
                model.addAttribute("customers", customerList);
            }
        }

        String sql = """
                SELECT DISTINCT Country
                FROM Customers
                """;
        Statement stmt = conn.createStatement();
        ResultSet rs = stmt.executeQuery(sql);
        var countryList = new ArrayList<String>();
        try (stmt; rs; conn) {
            while (rs.next()) {
                countryList.add(rs.getString(1));
            }
            model.addAttribute("countryList", countryList);
        }

        return "main25/sub4Customer";
    }

    // select name과 이름이 다르므로 @RequestParam을 작성해야 합니다.
    @GetMapping("sub3")
    public String method3(@RequestParam(value="category", required = false)
            String[] categorySelect, Model model) throws Exception {

        Connection conn = dataSource.getConnection();

        // 카테고리가 선택되었을 때만 발생해야 함
        if (categorySelect != null && categorySelect.length > 0) {

            /* ? 미지정 : 배열의 길이에 따라 달라진다. ? = categorySelect */
            String questionMarks = "";
            for (int i = 0; i < categorySelect.length; i++) {
                questionMarks += "?";
                if(i != categorySelect.length-1){
                    questionMarks += ",";
                }
            }

            String productSql = STR."""
                SELECT *
                FROM Products
                WHERE CategoryID IN (\{questionMarks})
                ORDER BY CategoryID, Price
                """;

            /* productList에 categorySelect에 맞는 값을 넣어줌 */
            var productList = new ArrayList<MyBean256Product>();
            PreparedStatement pstmt = conn.prepareStatement(productSql);

            // i+1번째 ?에 categorySelect 값을 넣어줘야 함
            for (int i = 0; i < categorySelect.length; i++) {
                pstmt.setString((i + 1), categorySelect[i]);
            }

            ResultSet resultSet = pstmt.executeQuery();

            try (pstmt; resultSet) {
                while (resultSet.next()) {
                    MyBean256Product bean = new MyBean256Product();
                    bean.setId(resultSet.getInt(1));
                    bean.setName(resultSet.getString(2));
                    bean.setSupplierId(resultSet.getInt(3));
                    bean.setCategoryId(resultSet.getInt(4));
                    bean.setUnit(resultSet.getString(5));
                    bean.setPrice(resultSet.getDouble(6));

                    productList.add(bean);
                }
                model.addAttribute("products", productList);
                model.addAttribute("prevCategorySelect", categorySelect);
            }
        }

        // 선택할 수 있게 제시(select)
        // 카테고리의 아이디와 이름 categoryList에 넣기
        String categorySql = "SELECT * FROM Categories";
        Statement stmt = conn.createStatement();
        ResultSet rs = stmt.executeQuery(categorySql);
        var categoryList = new ArrayList<MyBean263Category>();

        try (rs; stmt; conn){
            while (rs.next()) {
                MyBean263Category category = new MyBean263Category();
                category.setId(rs.getInt(1));
                category.setName(rs.getString(2));

                categoryList.add(category);
            }
            model.addAttribute("categoryList", categoryList);
        }

        return "main25/sub6ProductList";
    }
}
