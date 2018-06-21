<%-- 
    Document   : addMore
    Created on : 1 Jun, 2018, 3:27:49 PM
    Author     : Administrator
--%>

<%@ taglib uri="/struts-tags" prefix="s"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <title>Cart</title>
    </head>
    <body>
        <center>
        <h1>Booking Cart</h1>
        <br/>
        <s:form action="/display/displayClassType">
            <s:submit cssClass="btn btn-warning" value="ReBook"></s:submit> 
       </s:form>
        <br/><br/>
        <s:form action="/ticket/insertPassengerTicket">
            <s:submit cssClass="btn btn-warning" value="Book Ticket"></s:submit> 
       </s:form>

        <center/>
        </body>
</html>
