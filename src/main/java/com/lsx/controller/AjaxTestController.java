package com.lsx.controller;

import com.lsx.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@Controller
@RequestMapping("ajax")
public class AjaxTestController {

    @Autowired
    private UserService userService;

    @RequestMapping("/testgetAjax01")
    public void testgetAjax01(HttpServletRequest request, HttpServletResponse response) throws IOException {
        System.out.println("发送了一个GET请求");
        String name=request.getParameter("name");
        String age=request.getParameter("age");
        response.setContentType("text/html;charset=UTF-8");
        response.getWriter().write("收到了请求");

    }
    @RequestMapping("/testgetAjax02")
    public void testgetAjax02(HttpServletRequest request, HttpServletResponse response) throws IOException {
        System.out.println("来了一个POST请求");
        String name=request.getParameter("name");
        String age=request.getParameter("age");
        System.out.println("收到一个请求。name="+name+",age="+age);
        response.setContentType("text/html;charset=UTF-8");
        response.getWriter().write("收到了请求");

    }

    @RequestMapping("/testajaxname")
    public void testajaxname(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String name=request.getParameter("name");
        System.out.println("name="+name);
        int i = userService.checkUserName(name);
        if(i==0){
            response.getWriter().println(0);
        }else {
            response.getWriter().println(1);
        }


    }

}
