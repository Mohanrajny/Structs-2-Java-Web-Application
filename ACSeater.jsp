<%-- 
    Document   : ACseater
    Created on : 1 Jun, 2018, 7:10:58 PM
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
        <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.6.1/jquery.min.js"></script>                
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

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
            var ar=[];
            ar.push(12);
            ar.push(23);
            ar.push(21231234);
            var item={"values":ar};
            $.ajax({
                url: "jsonservlet",
                type: 'POST',
                dataType: 'json',
                data: JSON.stringify(item),
                contentType: 'application/json',
                mimeType: 'application/json'
            });
        });
        });
            </script>
    </head>
    <body>
        <center>
        <h3>AC Seater Seats!</h3>
        <s:iterator value="seatsBookedList" var="i" status="itStatus">
            <s:if test="#i==true">
                <s:checkbox name="disabledSeats"  fieldValue="true" label="%{#itStatus.count}" disabled="true">
                </s:checkbox>
            </s:if>
            <s:else>
                <s:checkbox id="selectedSeats" name="selectedSeats"  fieldValue="%{#itStatus.count}" label="%{#itStatus.count}" >
                </s:checkbox>
            </s:else>    
        </s:iterator>
        
        <s:form name="selectedSeats" action="/bus/addMore">
            <s:hidden name="type1" value="a" id="my_IDValue"/>
            <%--<s:submit id="seatsSelectedSubmit" value="submit" onclick="redirect('called')"></s:submit>--%>
            <s:submit cssClass="bg-primary" id="seatsSelectedSubmit" value="submit"></s:submit>
            </s:form>
        <div id="divResult">
        </div>
    
        </center>
    </body>
</html>
