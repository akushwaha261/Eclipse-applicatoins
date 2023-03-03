
package com.application;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import java.io.IOException;
import java.io.PrintWriter;

public class ForwardServletClass extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html");
        PrintWriter out=resp.getWriter();
        out.println("<h2>This is successfully forwarded</h2>");
        out.println("<h1>Congratulation :) </h1>");
    }
    
}
