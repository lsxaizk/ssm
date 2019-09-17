package com.lsx.controller;

import com.lsx.service.AccountService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/account")
public class AccountController {

    @Autowired
    private AccountService accountService;
    @RequestMapping("/findAll")
    public String findAll(){
        System.out.println("表现层，展示信息");
        accountService.findAll();
        return "success";
    }
}
