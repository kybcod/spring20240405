package com.study.controller;

import com.study.domain.MyBean254Customer;
import com.study.domain.MyBean258Employee;
import com.study.mapper.Mapper02;
import com.study.mapper.Mapper03;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
@RequiredArgsConstructor
@RequestMapping("main32")
public class Controller32 {

    private final Mapper03 mapper;
    private final Mapper02 mapper02;

    @GetMapping("sub1")
    public void method1(){
        int rowCount = mapper.deleteOneCustomer();
        System.out.println(rowCount + "명 고객 삭제됨");
    }

    // main32/sub2?cid=5
    @GetMapping("sub2")
    public void method2(Integer cid){
        int rowCount = mapper.deleteOneCustomerByID(cid);
        System.out.println(rowCount + "명 고객 삭제됨");
    }

    // main32/sub3?eid=2
    @GetMapping("sub3")
    public void method3(Integer eid){
        int rowCount = mapper.deleteOneEmployeeByID(eid);
        System.out.println(rowCount + "명 직원 삭제");
    }

    // /main32/sub4?name=흥민&contactName=캡틴&city=런던&country=한국&address=토트넘
    @GetMapping("sub4")
    public void method4(MyBean254Customer customer){
        mapper.insertCustomer(customer);

    }

    @GetMapping("sub5")
    public void method5(){
        // form이 있는 view 포워딩

    }

    @PostMapping("sub5")
    public String method6(MyBean258Employee employee, RedirectAttributes redirectAttributes){
        int rowCount = mapper.insertEmployee(employee);
        if (rowCount>0){
            redirectAttributes.addFlashAttribute("message", rowCount+"명 직원이 등록되었습니다.");
        }else{
            redirectAttributes.addFlashAttribute("message", "등록되지 않았습니다");
        }
        return "redirect:/main32/sub5";
    }

    @GetMapping("sub6")
    public void method7(@RequestParam(value = "id", required = false) Integer eid, Model model){
        if(eid != null){
            MyBean258Employee e = mapper02.selectOneEmployee2(eid);
            model.addAttribute("employee", e);
        }
    }

    @PostMapping("sub6/update")
    public String method8(MyBean258Employee employee, RedirectAttributes redirectAttributes){
        int rowCount = mapper.updateEmployee(employee);
        if (rowCount>0){
            redirectAttributes.addFlashAttribute("message", rowCount+"명 직원이 수정되었습니다.");
        }else{
            redirectAttributes.addFlashAttribute("message", "수정되지 않았습니다");
        }
        redirectAttributes.addAttribute("id", employee.getId());
        return "redirect:/main32/sub6";
    }

    @GetMapping("sub7")
    public void method9(Integer id, Model model){
        if (id != null){
            MyBean254Customer c = mapper02.selectOneCustomer4(id);
            model.addAttribute("customer", c);
            System.out.println(c);
        }
    }

    @PostMapping("sub7/update")
    public String method10(MyBean254Customer customer, RedirectAttributes rttr){
        int rowCount = mapper.updateCustomer(customer);
        if(rowCount > 0){
            rttr.addFlashAttribute("message", rowCount+"명 고객이 수정되었습니다.");
        }else{
            rttr.addFlashAttribute("message","수정되지 않았습니다.");
        }
        rttr.addAttribute("id", customer.getId());
        return "redirect:/main32/sub7";
    }

}
