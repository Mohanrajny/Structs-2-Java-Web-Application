<%-- 
    Document   : reBook
    Created on : 1 Jun, 2018, 6:52:11 PM
    Author     : Administrator
--%>

<%@page import="com.reservation.Reservation"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.reservation.ClassInfo"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Re book</title>
    </head>
    <body>
        <h1>Add More to Cart!</h1>
        <center>
        <h4>Select Class Type!</h4>
        <%
            int routeId=Integer.valueOf(String.valueOf(session.getAttribute("RouteList")));
            out.print(routeId);
            ArrayList<ClassInfo> classTypes=Reservation.readClassInfo(routeId);
        %>
        <table border="2" width="2" cellspacing="1" cellpadding="1">
            <thead>
                <tr>
                    <th>Class Type</th>
                    <th>Fare(In Rupee)</th>
                </tr>
            </thead>
            <tbody>
                <%
                    for(int i=0;i<classTypes.size();i++)
                    {
                        String s="<tr><td>"+classTypes.get(i).getClassType()+"</td><td>"+classTypes.get(i).getFare()+"</td></tr>";
                        out.print(s);
                    }
                %>
            </tbody>
        </table>
        <form action="selectSeats.jsp">
        <select name="ClassList">
        <option value="-1">Select Class Type</option>
            <%
                for(int i=0;i<classTypes.size();i++)
                {
                    String s="<option value="+classTypes.get(i).getClassId()+">"+classTypes.get(i).getClassType()+"</option>";
                    out.print(s);
                }   
            %>
            </select>
            <input type="submit" value="Show Seats">
        </form>
        </center>
    </body>
</html>
