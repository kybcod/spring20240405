package com.study.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;

@RequestMapping("/api/main45")
@RestController // Controller + ResponseBody
public class Controller45 {
    @PostMapping("sub1")
    public String sub1(@RequestParam("name") String name,
                       @RequestParam("file") MultipartFile file) throws IOException {

        String path = "C:/Temp/" + file.getOriginalFilename();
        file.transferTo(new File(path));

        return null;
    }

    @PostMapping("sub2")
    public String sub2(String name, @RequestParam("file[]") MultipartFile[] file) throws IOException{
        System.out.println("name = " + name);
        if (file == null || file.length > 0){
            for (MultipartFile file1 : file) {
                if (file1.getSize() > 0){
                    String path = "C:/Temp/" + file1.getOriginalFilename();
                    file1.transferTo(new File(path));
                }
            }
        }
        return null;
    }
}
