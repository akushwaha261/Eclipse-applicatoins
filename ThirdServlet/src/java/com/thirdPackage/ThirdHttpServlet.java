
package com.thirdPackage;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

public class ThirdHttpServlet extends HttpServlet{
    @Override
    protected void doGet(HttpServletRequest req,HttpServletResponse resp) throws ServletException,IOException{
        System.out.println("This is doPOST() method :)");
        resp.setContentType("text/html");
        PrintWriter out=resp.getWriter();
        out.println("<h1>Hello everyone this is Java Http doGet() method</h1>");
         
        out.println("<h1>Todays data is " + new Date().toString()+"</h1>");
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doPost(req, resp); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/OverriddenMethodBody
    }
    
}
