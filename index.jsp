<%-- 
    Document   : index
    Created on : 31 May, 2018, 7:37:28 PM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Red Bus Login Page</title>
    </head>
    <body>
    <center>
        <h1>Welcome To Red Bus</h1>
        <s:form action="/user/validateUser">
            <s:textfield name="userId"  label="User Id"></s:textfield>
            <s:textfield name="password" label="password" type="password"></s:textfield>
            <br/>
            <s:submit value="Login"></s:submit> 
        </s:form>
            </center>
    </body>
</html>