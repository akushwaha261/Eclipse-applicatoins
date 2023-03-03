<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="s" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="t" %>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous"><!-- comment -->
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
<!--        <t:set var="age" value="21" scope="applicaiton" ></t:set>
        <t:if test="${age>18}">
            <t:out value="${'You are eligible for vote'}"> </t:out>
            <t:out value="${'You are eligible for vote'}"> </t:out>
        </t:if><br>
        <t:choose>
            <t:when test="${age>20}">You are now matured</t:when>
            <t:when test="${age==18}">You are now adult</t:when>
        </t:choose>
        
        <t:out value="${'Hello this is ayush kushwaha'}"></t:out>
        <t:forEach var="i" begin="1" end="10" >
            <br>2 x ${i} = <t:out value="${2*i}" ></t:out>
        </t:forEach>
            
        <t:set var="name" value="Ayush"></t:set><br>
        <t:out value="${f:length(name)}"></t:out>
        <t:out value="${f:toLowerCase(name)}"></t:out>
        <t:out value="${f:toLowerCase(name)}"></t:out>
        -->
        <hr> 
        <s:setDataSource driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3306/register"
                         user="root" password="root" var="ds"></s:setDataSource>
        <s:query dataSource="${ds}" var="rs" >select * from user_detail;</s:query>
        <div class="container"> 
            <table class="table">
                <tr style="color: red">
                    <td>UserID  </td>
                    <td>UserName  </td>
                    <td>UserPassword  </td>
                    <td>UserEmail  </td>

                </tr>
                <t:forEach items="${rs.rows}" var="row">

                    <tr>
                        <td><t:out value="${row.id}"></t:out></td>
                        <td><t:out value="${row.name}"></t:out></td>
                        <td><t:out value="${row.password}"></t:out></td>
                        <td><t:out value="${row.email}"></t:out></td>

                    </tr>
                </t:forEach>
            </table>
        </div>
    </body>
</html>
