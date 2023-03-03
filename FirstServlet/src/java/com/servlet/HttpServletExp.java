/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.servlet;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import java.io.IOException;
import java.io.PrintWriter;

/**
 *
 * @author kushw
 */
public class HttpServletExp extends HttpServlet{
    @Override
    public void doGet(HttpServletRequest request,HttpServletResponse response) throws ServletException,IOException{
        response.setContentType("text/html");
        PrintWriter out=response.getWriter();
        out.println("<h1>Http servlet is working fine</h1>");
        out.println("<h1>The Post method is working");
        
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html");
        PrintWriter out=resp.getWriter();
        out.println("<h1>The Post method is working");
    }
    
}

