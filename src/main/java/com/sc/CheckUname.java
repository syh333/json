package com.sc;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * 类名：CheckUname
 * 描述：描述的一段话
 * 作者：史耀华
 * 日期：2020/11/4 20:40
 * 版本：v1.0
 */
@WebServlet(urlPatterns="/CheckUname")
public class CheckUname extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String uname=req.getParameter("uname");
        System.out.println("用户名是"+uname);
        String result="null";
        if(uname!=null&&uname.equals("admin")){
            //账户存在
          result="{\"code\":1000,\"msg\":\"yes\"}";
        }else{
            //不存在
            result="{\"code\":2000,\"msg\":\"no\"}";
        }
        System.out.println("结果"+result);
        //响应
        PrintWriter out = resp.getWriter();
        out.print(result);
        out.close();
    }
}
