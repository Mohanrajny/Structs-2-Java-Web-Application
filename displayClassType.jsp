<%-- 
    Document   : selectClassType
    Created on : 1 Jun, 2018, 11:19:27 AM
    Author     : Administrator
--%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Class Details</title>
        
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        
    </head>
    <body>
        <div class="container">
        <center>
        <h1>Select Class Type!</h1>
        <br/><br/>
        
        <table class="table table-striped">
            <thead>
                <tr class="bg-info">
                    <th>Select Here</th>
                    <th>Class Type</th>
                    <th>Fare(In Rupee)</th>
                </tr>
            </thead>
            <tbody>
                <s:iterator value="classTypeList" var="i">
                    <tr>
                    <td>
                    <s:form action="/bus/showAvailableSeats">
                        <s:hidden name="classId" value="%{#i.classId}"/>
                        <s:submit cssClass="bg-primary" value="select"></s:submit>
                    </s:form></td>
                    <td><s:property value="#i.classType"/></td>
                        <td><s:property value="#i.fare"/></td>
                    </tr>
                </s:iterator>
            </tbody>
        </table>
        </center>
            </div>
    </body>
</html>
