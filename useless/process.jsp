<%@page import="com.reservation.Route"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.reservation.Reservation"%>  
<jsp:useBean id="obj" class="bean.User"/>  
  
<jsp:setProperty property="*" name="obj"/>  
  
<%
    
    Reservation.flushSeats();
//int status=RegisterDao.register(obj);  
//if(status>0)  
//out.print("You are successfully registered");  
//out.print(request.getParameter("uname"));
int userId=Integer.valueOf(request.getParameter("userId"));
String password=request.getParameter("password");
int status=Reservation.validateUser(userId, password);
session.setAttribute("userId", userId);

if(status==1)
{
    out.print("Valid User");
    %>
    <jsp:forward page="MainMenu.jsp"/> 
<%
}
else
{
    out.print("InValid User");

}

%>

