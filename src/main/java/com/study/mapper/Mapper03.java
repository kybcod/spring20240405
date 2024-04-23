package com.study.mapper;

import com.study.domain.MyBean254Customer;
import com.study.domain.MyBean258Employee;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Update;

@Mapper
public interface Mapper03 {

    @Delete("""
            DELETE FROM Customers WHERE CustomerId = 1
            """)
    int deleteOneCustomer(); //리턴타입 void도 가능

    @Delete("""
            DELETE FROM Customers WHERE CustomerId = #{id}
            """)
    int deleteOneCustomerByID(int id);

    @Delete("""
            DELETE FROM Employees WHERE EmployeeId = #{id}
            """)
    int deleteOneEmployeeByID(Integer id);

    @Insert("""
            INSERT INTO Customers(CustomerName, ContactName, Address, City, PostalCode, Country)
            VALUES (#{name}, #{contactName}, #{address}, #{city}, #{postalCode}, #{country})
            """)
    int insertCustomer(MyBean254Customer customer); //Customer 프로퍼티를 get메소드를 이용해서 꺼내준다

    @Insert("""
            INSERT INTO Employees(LastName, FirstName, BirthDate, Photo, Notes)
            VALUES (#{lastName}, #{firstName}, #{birthDate}, #{photo}, #{notes})
            """)
    int insertEmployee(MyBean258Employee employee);

    @Update("""
            UPDATE Employees 
            SET LastName = #{lastName}, FirstName = #{firstName}, 
                     BirthDate = #{birthDate}, Photo = #{photo}, Notes = #{notes}
            WHERE EmployeeId = #{id}
            """)
    int updateEmployee(MyBean258Employee employee);

    @Update("""
            UPDATE Customers 
            SET CustomerName = #{name}, ContactName = #{contactName}, 
                Address = #{address}, City = #{city}, 
                PostalCode = #{postalCode}, Country = #{country}
            WHERE CustomerId = #{id}
            """)
    int updateCustomer(MyBean254Customer customer);
}
