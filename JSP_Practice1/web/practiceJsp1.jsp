

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.Random" %>
<%@page errorPage="errorPage.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello this is JSP Practice test</h1>
        <%!
           
            
            int a =10,b=20;
            public int doSum(){
                return a+b;
            }
            public String doReverse(String str){
                String rev="";
                for(int i=str.length()-1;i>=0;i--){
                    rev=rev+str.charAt(i);
                }
                return rev;
            }
        %>  
        
        <%  Random r=new Random();
            int ran=r.nextInt(10/0);
            out.println(doReverse("Ayush kushwaha"));
            out.println(doSum());
        %>
        <h1>Hello this is Ayush and reverse string is <%= doReverse("Ayush")%></h1>
        <h2>The random number is <%=ran%></h2>
    </body>
</html>
