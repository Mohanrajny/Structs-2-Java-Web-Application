<%-- 
    Document   : details
    Created on : 7 Jun, 2018, 6:53:07 PM
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
        <h1>Transactions!</h1>
        <table class="table table-striped">
            <thead>
                <tr class="bg-primary">
                    <th>select</th>
                    <th>PnrId</th>
                    <th>Source</th>
                    <th>Destination</th>
                    <th>Fare</th>
                </tr>
            </thead>
            <tbody>
                <s:iterator value="passengerTicketDetails" var="i">
                    <tr class="bg-info">
                        <td>
                        <s:form action="/ticket/readPasssengerInformationByPnrId">
                        <s:hidden name="pnrIdByTable" value="%{#i.pnrId}"/>
                        <s:submit value="select"></s:submit></s:form></td>
                    <td><s:property value="#i.pnrId"/></td>
                        <td><s:property value="#i.source"/></td>
                    <td><s:property value="#i.destination"/></td>
                        <td><s:property value="#i.fare"/></td>
                    </tr>
                    </s:iterator>
            </tbody>
        </table>
        <s:form action="/user/MainMenu">
                <s:submit value="MainMenu"></s:submit></s:form>
        </center>
    </body>
</html>
