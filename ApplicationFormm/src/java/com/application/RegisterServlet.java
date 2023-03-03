package com.application;
import jakarta.servlet.http.*;
import jakarta.servlet.*;
import java.io.IOException;
import java.io.PrintWriter;

public class RegisterServlet extends HttpServlet{


    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html");
        PrintWriter out=resp.getWriter();
        String name=req.getParameter("user_name");
        String password=req.getParameter("user_password");
        String gender=req.getParameter("user_gender");
        String course=req.getParameter("user_course");
        String condition=req.getParameter("condition");
        if(condition!=null){
            if(condition.equals("checked")){
                out.println("<h2>Name: "+name+"</h2>");
                out.println("<h2>Password: "+password+"</h2>");
                out.println("<h2>Gender: "+gender+"</h2>");
                out.println("<h2>Course: "+course+"</h2>");
                
                
                RequestDispatcher rd=req.getRequestDispatcher("forwardServlet");
                rd.forward(req, resp);
            }
        }else{
            out.println("<h2>You are not selected checkbox</h2>");
            
            RequestDispatcher rd=req.getRequestDispatcher("index.html");
            rd.include(req, resp);
        }
    }   
    
    
}
