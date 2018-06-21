<%-- 
    Document   : Booking
    Created on : 1 Jun, 2018, 10:18:45 AM
    Author     : Administrator
--%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Booking</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        
    </head>
    <body>
      <div class="container">
        
    <center>
        <h1>Select The Route</h1>
        <br/><br/><br/>
        <table class="table table-striped">
            <thead>
                <tr class="bg-info">
                    <th>Select Here</th>
                    <th>Source</th>
                    <th>Destination</th>
                    <th>Depature Time</th>
                    <th>Arrival Time</th>
                </tr>
            </thead>
            <tbody>
                <s:iterator  value="routeList" var="i">
                    <tr>
                    <td>
                    <s:form action="/display/displayClassType">
                        <s:hidden name="routeId" value="%{#i.routeId}"/>
                        <s:submit cssClass="bg-primary" value="select"></s:submit>
                    </s:form></td>  
                    <td><s:property value="#i.source"/></td>
                        <td><s:property value="#i.destination"/></td>
                        <td><s:property value="#i.departTime"/></td>
                        <td><s:property value="#i.arrivalTime"/></td>
                    </tr>
                </s:iterator>
            </tbody>
        </table>
            
        </center>
    </div>
    </body>
</html>
