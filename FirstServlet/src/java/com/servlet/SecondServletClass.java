/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.servlet;
import jakarta.servlet.*;
import java.io.IOException;
import java.io.PrintWriter;

/**
 *
 * @author kushw
 */
public class SecondServletClass extends GenericServlet{
    @Override
    public void service(ServletRequest req,ServletResponse resp) throws ServletException,IOException{
        System.out.println("This is servlet using Generic Servlet");
        resp.setContentType("text/html");
        PrintWriter out=resp.getWriter();
        out.println("<h1>This is the second servlet using generic servlet</h1>");
    }
}
