<%-- 
    Document   : demo
    Created on : 5 Jun, 2018, 7:35:44 PM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html>
<head>
    <title></title>
    <script src="js/libs/jquery/jquery.js"></script>
    <script src="js/libs/json2/json2.js"></script>
    <script type="text/javascript">   
        $(document).ready(function () {
//                    $('input[name="skills"]').click(function () {            
            $('#btnGetSelectedSkills').click(function () {            
                var n=[];
                var result = $('input[name="skills"]:checked');
                    
                    result.each(function (){
                         n.push($(this).val());
                    });
                    $('#divResul').html(n);
            alert("selected options: " + langArr);
            var m=JSON.stringify(n);
        $.ajax( {
            url: "demo",
            type: "POST", 
            data:  {"array",m},
        dataType: "json",
        contentType: "application/json",
        success: function (json) {
            console.log('success  :'+json);
        }
//        complete: function (msg,a,b) {
//            console.log('complete :'+msg); 
//        },
//        error : function(msg,a,b){
//            console.log('error:'+msg);
//        }
    } );
        });
    });
    </script>
</head>
<body style="font-family:Arial">
    Skills :
    <input type="checkbox" name="skills" value="JavaScript" />JavaScript
    <input type="checkbox" name="skills" value="jQuery" />jQuery
    <input type="checkbox" name="skills" value="C#" />C#
    <input type="checkbox" name="skills" value="VB" />VB
    <br /><br />
    <input id="btnGetSelectedSkills" type="submit" value="Get Selected Skills" />
    <br /><br />
    <s:form action="save-translation">
    <s:submit value="submit"/>
        </s:form>
    <div id="divResul">
    </div>
    <div id="divResult">
        
    </div>
    
</body>
</html>
