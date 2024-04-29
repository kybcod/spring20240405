package com.study.domain;

import lombok.Data;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import java.util.List;

@Mapper
public interface Mapper05 {

    @Data
    static class EmployeeIncome{
        private Integer employeeId;
        private String lastName;
        private String firstName;
        private String income;
    }

    @Select("""
            SELECT e.EmployeeId, e.LastName, e.FirstName, SUM(od.Quantity * p.Price) AS income
            FROM Orders o JOIN Employees e ON o.EmployeeId = e.EmployeeId
            JOIN OrderDetails od ON o.OrderId = od.OrderId
            JOIN Products p On od.ProductId = p.ProductId
            WHERE o.OrderDate BETWEEN #{from} AND #{to}
            GROUP BY e.EmployeeId
            ORDER BY income DESC
            """)
    List<EmployeeIncome> selectIncomeList(String from, String to);


    @Data
    static class CustomerIncome{
        private String customerName;
        private String income;
    }

    @Select("""
            SELECT CustomerName, SUM(od.Quantity * p.Price) AS income 
            FROM Customers c JOIN Orders o on c.CustomerID = o.CustomerID
            JOIN OrderDetails od ON o.OrderID = od.OrderID
            JOIN Products p ON p.ProductID = od.ProductID
            WHERE o.OrderDate BETWEEN #{from} AND #{to}
            GROUP BY c.CustomerID
            ORDER BY income desc
            """)
    List<CustomerIncome> selectCustomerIncomeList(String from, String to);
}
