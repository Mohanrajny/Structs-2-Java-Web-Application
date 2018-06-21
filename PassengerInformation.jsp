    <%-- 
    Document   : PassengerInformation
    Created on : 1 Jun, 2018, 4:02:51 PM
    Author     : Administrator
--%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Passenger details</title>
        <script src="js/libs/jquery/jquery.js"></script>
        <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.6.1/jquery.min.js"></script>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script type="text/javascript">
        $(document).ready(function () {
               $('#readpassenger').click(function () {            
                var string="";
                $(".acseatsinfo").each(function() {    
                    string+=$(this).val()+" ";
                });
                document.getElementById('passengerInfo1').value=string;
                var string2="";
                $(".acsemiseatsinfo").each(function() {    
                    string2+=$(this).val()+" ";
                });
                document.getElementById('passengerInfo2').value=string2;        
        });
        });
            </script>
    </head>
    <body>
        <h1>Enter the Passenger Information!</h1>
    <center>
         <div class="container">
        
          <table class="table table-striped">
            <thead>
                <tr class="bg-primary">
                      <th>Seat No</th>
                      <th>Seat Type</th>
                      <th>Name</th>
                      <th>Age</th>
                      <th>Gender</th>
                </tr>
                  </thead>
                  <tbody>
        <s:iterator value="ac" var="i">
            <tr><td><s:property value="#i.seatNo"/></td>
               <td><s:property value="#i.seatType"/></td>
               <td><input type="text" class="acseatsinfo" /></td>
               <td><input type="text" class="acseatsinfo" /></td>
               <td><input type="text" class="acseatsinfo" /></td>
         </tr>
               <%--<s:textfield id="acseatsname" label="User name" name="acseatsname" />--%>
               <%--<s:textfield id="acseatsage" label="age" name="acseatsage" />--%>
               <%--<s:textfield id="acseatsgender" label="gender" name="acseatsgender" />--%>
        </s:iterator>
        <s:iterator value="acSemi" var="i">
            <tr>
            <td><s:property value="#i.seatNo"/></td>
               <td><s:property value="#i.seatType"/></td>
               <td><input type="text" class="acsemiseatsinfo" /></td>
               <td><input type="text" class="acsemiseatsinfo" /></td>
               <td><input type="text" class="acsemiseatsinfo" /></td>
               </tr>
        </s:iterator>
         
                  </tbody>
              </table>
    <s:form action="/ticket/insertPassengerInfo">
        <s:hidden name="passengerInfo1" value="a" id="passengerInfo1"/>
        <s:hidden name="passengerInfo2" value="a" id="passengerInfo2"/>
                <s:submit id="readpassenger" value="Submit"></s:submit>
            </s:form>        
        </div>
        </center> 
    </body>
</html>
