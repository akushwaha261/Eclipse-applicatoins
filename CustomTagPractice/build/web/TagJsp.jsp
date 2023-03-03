<%-- 
    Document   : TagJsp
    Created on : 01-Feb-2023, 8:53:05 pm
    Author     : kushw
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="/WEB-INF/tlds/myTag.tld" prefix="t"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <%--<t:myTag></t:myTag>--%>
        <t:printTable number="3" color="red"></t:printTable>
    </body>
</html>
