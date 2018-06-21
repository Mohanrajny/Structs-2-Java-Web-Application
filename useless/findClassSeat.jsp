<%-- 
    Document   : findClassSeat
    Created on : 1 Jun, 2018, 7:12:47 PM
    Author     : Administrator
--%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.reservation.Reservation"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            int classId=Integer.valueOf(request.getParameter("ClassList"));
            out.print(classId);
            String classType=Reservation.readClassType(classId);
            out.print(classType);
            if(classType.equals("A/C Seater"))
            {
                
            }
            
        %>
        <h1>Hello World!</h1>
    </body>
</html>
