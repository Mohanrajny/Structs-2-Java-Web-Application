<%-- 
    Document   : printticket
    Created on : 7 Jun, 2018, 6:54:51 PM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        
    </head>
    <body>
        
        <center>
            <h1>Ticket Details</h1>   
        <table class="table table-striped ">
            <thead>
                <tr class="bg-primary">
                    <th>Seat No</th>
                    <th>Class Type</th>
                    <th>Passenger Name</th>
                    <th>Age</th>
                    <th>Gender</th>
                </tr>
            </thead>
            <tbody>
                <s:iterator value="passengerDetails" var="i">
                    <tr class="bg-info">
                    <td><s:property value="#i.seatNo"/></td>
                        <td><s:property value="#i.classType"/></td>
                    <td><s:property value="#i.passName"/></td>
                        <td><s:property value="#i.age"/></td>
                    <td><s:property value="#i.gender"/></td>
                    </tr>
                </s:iterator>
                 
            </tbody>
            
        </table>
            <h3>fare    <s:property value="fare"/></h3> 
            
        <s:form action="/user/MainMenu">
                <s:submit value="MainMenu"></s:submit></s:form>
        </center>

    </body>
</html>
