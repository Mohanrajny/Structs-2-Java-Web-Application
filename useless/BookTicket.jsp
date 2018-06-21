<%-- 
    Document   : BookTicket
    Created on : 2 Jun, 2018, 2:26:37 PM
    Author     : Administrator
--%>
<%@page import="com.reservation.ACSemiSeaterSeats"%>
<%@page import="com.reservation.ACSeaterSeats"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.reservation.SeatsBooked"%>
<%@page import="com.reservation.Reservation"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Booking Ticket</title>
    </head>
    <body>
        <center>
        <h1>Booking Ticket........</h1>
        <%
            String name,gender;
            int age=0;
            float total=0;
            float fare=0;
            int routeId=Integer.valueOf(String.valueOf(session.getAttribute("RouteList")));
            int classId;
            int userId=Integer.valueOf(String.valueOf(session.getAttribute("userId")));
            ArrayList<ACSeaterSeats> acSeaterSeats=Reservation.readACSeaterSeats();
            ArrayList<ACSemiSeaterSeats> acSemiSeaterSeats=Reservation.readACSemiSeaterSeats();            
            
            
        %>
        <table border="1">
            <thead>
                <tr>
                    <th>SeatNo</th>
                    <th>ClassType</th>
                    <th>Name</th>
                    <th>Age</th>
                    <th>Gender</th>
                </tr>
            </thead>
            <tbody>
                <%
            
                    if(acSeaterSeats.size()>0)
                    {
                        classId=Reservation.readClassIdByRouteIdSeatType(routeId,"A/C Seater");
            fare=Reservation.readFare(classId);
            total=fare;
            for(int i=1;i<acSeaterSeats.size();i++)
            {
                fare+=fare;
                total+=fare;
            }
            Reservation.insertPassengerTicketTable(routeId, classId, userId, fare);
                for(int i=1;i<=acSeaterSeats.size();i++)
            {
               name=String.valueOf(request.getParameter("acSeataerPassengerName"+i));
               age=Integer.valueOf(String.valueOf(request.getParameter("acSeaterPassengerAge"+i)));
               gender=String.valueOf(request.getParameter("acSeaterPassengerGender"+i));
               Reservation.insertPassengerTable(classId, routeId, userId, name, age, gender, acSeaterSeats.get(i-1).getSeatNo());
               String s="<tr> <td>"+acSeaterSeats.get(i-1).getSeatNo()+"</td> <td>"+acSeaterSeats.get(i-1).getSeatType()+"</td> <td>"+name+"</td> <td>"+age+"</td> <td>"+gender+"</td></tr>";
//               out.print(acSeaterSeats.get(i-1).getSeatNo()+acSeaterSeats.get(i-1).getSeatType()+name+gender+age);
               out.print(s);
               Reservation.updateBookedseats(acSeaterSeats.get(i-1).getSeatNo(), classId);
            }
            
                    }
                
            if(acSemiSeaterSeats.size()>0)
            {
                
            classId=Reservation.readClassIdByRouteIdSeatType(routeId,"A/C Semi-Seater");
            fare=Reservation.readFare(classId);
            total+=fare;
            for(int i=1;i<acSeaterSeats.size();i++)
            {
                fare+=fare;
                total+=fare;
            }
            Reservation.insertPassengerTicketTable(routeId, classId, userId, fare);
            for(int i=1;i<=acSemiSeaterSeats.size();i++)
            {
               name=String.valueOf(request.getParameter("acSemiSeataerPassengerName"+i));
               age=Integer.valueOf(String.valueOf(request.getParameter("acSemiSeaterPassengerAge"+i)));
               gender=String.valueOf(request.getParameter("acSemiSeaterPassengerGender"+i));
               Reservation.insertPassengerTable(classId, routeId, userId, name, age, gender, acSemiSeaterSeats.get(i-1).getSeatNo());
               String s="<tr> <td>"+acSemiSeaterSeats.get(i-1).getSeatNo()+"</td> <td>"+acSemiSeaterSeats.get(i-1).getSeatType()+"</td> <td>"+name+"</td> <td>"+age+"</td> <td>"+gender+"</td></tr>";
//               out.print(acSemiSeaterSeats.get(i-1).getSeatNo()+acSemiSeaterSeats.get(i-1).getSeatType()+name+gender+age);
               out.print(s);
               Reservation.updateBookedseats(acSemiSeaterSeats.get(i-1).getSeatNo(), classId);
            }
            }
            
                
                %>
                    
            </tbody>
        </table>
                <h3>fare: <%=total%> </h3>
        <a href="MainMenu.jsp"><h4>Main Menu</h4></a><br/>
        <a href="index.jsp"><h4>Logout</h4></a> 

        </center>
    </body>
</html> 