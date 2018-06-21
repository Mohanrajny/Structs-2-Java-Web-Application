<%-- 
    Document   : ACSemiSeater
    Created on : 1 Jun, 2018, 7:11:14 PM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script src="js/libs/jquery/jquery.js"></script>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.6.1/jquery.min.js"></script>
        <script type="text/javascript">
        $(document).ready(function () {
            $('#seatsSelectedSubmit').click(function () {            
                var n=[];
                var string="";
                var result = $('input[name="selectedSeats"]:checked');
                    result.each(function (){
                         n.push($(this).val());
                         string+=$(this).val()+" ";
                    });
            document.getElementById('my_IDValue').value=string;        
        });
        });
            </script>
    </head>
    <body>
        
        <center>
        <h3>AC Semi Seater Seats!</h3>
        <s:iterator value="seatsBookedList" var="i" status="itStatus">
            <s:if test="#i==true">
                <s:checkbox cssClass="fancy-checkbox-warning-custom-icons" name="disabledSeats"  fieldValue="true" label="%{#itStatus.count+10}" disabled="true">
                </s:checkbox>
            </s:if>
            <s:else>
                <s:checkbox cssClass="filled-in form-check-input" id="selectedSeats" name="selectedSeats"  fieldValue="%{#itStatus.count+10}" label="%{#itStatus.count+10}" >
                </s:checkbox>
            </s:else>    
        </s:iterator>
            <s:form name="selectedSeats" action="/bus/addMore">
            <s:hidden name="type2" value="a" id="my_IDValue"/>
            <%--<s:submit id="seatsSelectedSubmit" value="submit" onclick="redirect('called')"></s:submit>--%>
            <s:submit cssClass="bg-primary" id="seatsSelectedSubmit" value="submit"></s:submit>
            </s:form>
        </body>
</html>
