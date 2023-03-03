/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.servlet;
import java.util.*;
import jakarta.servlet.*;
import java.io.IOException;
import java.io.PrintWriter;
/**
 *
 * @author kushw
 */
public class FirstServletClass implements Servlet {
    ServletConfig conf;
    @Override
    public void init(ServletConfig conf){
        this.conf =conf;
        System.out.println("...object");
    }
    
    @Override
    public void service(ServletRequest req, ServletResponse resp) throws ServletException, IOException{
       System.out.println("Servicing.......");
       resp.setContentType("text/html");
       PrintWriter out=resp.getWriter();
       out.println("<h1>This is my First Output</h1>");
       out.println("<h1>Todays Date is "+new Date().toString()+"</h1>");
       
       
    }
    
    @Override
    public void destroy(){
        System.out.println("Going to servlet method..........");
    }
    
    //Non life cyclet method
    @Override
    public ServletConfig getServletConfig(){
        return this.conf;
    }
    
    @Override
    public String getServletInfo(){
        return "This method is call by Ayush Kushwaha";
    }
    
}