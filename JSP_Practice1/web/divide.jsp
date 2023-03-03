
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*" %>
<%@page errorPage="errorPage.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String userInput1= request.getParameter("input1");
            String userInput2= request.getParameter("input2");
            int n1=Integer.parseInt(userInput1);
            int n2=Integer.parseInt(userInput2); 
            int n3=n1/n2;
            
        %>
        <h2> The result is :- <%= n3 %></h2>
    </body>
</html>
