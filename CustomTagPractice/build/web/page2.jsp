<%-- 
    Document   : page2
    Created on : 03-Feb-2023, 1:28:16 am
    Author     : kushw
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello THis is page2</h1>
        <%  
            System.out.println("This page is page2"); 
            out.println("Redirecting to another page wait...");
            response.sendRedirect("page3.jsp");
        %>
    </body>
</html>
