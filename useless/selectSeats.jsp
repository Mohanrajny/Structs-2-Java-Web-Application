<%-- 
    Document   : selectSeats
    Created on : 1 Jun, 2018, 2:43:53 PM
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
        <center>
        <h1>Select Seats!</h1>
        
        
        <%
            int k=1;
            int classId=Integer.valueOf(request.getParameter("ClassList"));
            Reservation.setClassId(classId);
            session.setAttribute("ClassList", String.valueOf(classId));
            int noOfSeats=Reservation.readNoOfSeats(classId);
            String classType=Reservation.readClassType(classId);
            if(classType.equals("A/C Seater"))
            {
                %>
                <jsp:forward page="ACseater.jsp" />  
            <%
            }
            else if(classType.equals("A/C Semi-Seater"))
            {
                %>
                <jsp:forward page="ACSemiSeater.jsp" />  
                <%
            
            }
        %>
                
        </center>
    </body>
</html>
