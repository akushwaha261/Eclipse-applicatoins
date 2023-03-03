/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.thirdPackage;
import jakarta.servlet.GenericServlet;
import jakarta.servlet.ServletException;
import jakarta.servlet.ServletRequest;
import jakarta.servlet.ServletResponse;
import java.io.IOException;
import java.io.PrintWriter;


public class ThirdPackageClass extends GenericServlet {
    @Override
    public void service(ServletRequest req,ServletResponse resp) throws ServletException,IOException{
        
        System.out.println("This is the servlet using Generic Servlet type");
        resp.setContentType("text/html");
        PrintWriter out=resp.getWriter();   
        out.println("<h1>This is my second servlet using generic servlet </h1>");
    }

    
    
}
