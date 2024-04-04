<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Insert title here</title>
</head>
<body><br><br>
    <div class="container">
        <table class="table table-bordered">
            <thead>
                <tr style="background-color:#32CD32/* rgb(44, 126, 194) */;color:white;">
                
<th>ID</th><th>SLOTNUM</th><th>SLOTAREA</th><th>FROMDATE</th><th>TODATE</th><th>TIME</th><th>AMOUNT</th><th>AVAILABILITY</th><th style="width:70px">Action</th></tr>
</thead>
            

<%

String 	sid=null,slotnumber=null,slotarea=null,fromdate=null,todate=null,time=null,Amount=null,availability=null,uid=null;

try
{
   
     uid=session.getAttribute("uid").toString();
     
	  Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/onlinecarparkingdb","root","");
		Statement st=con.createStatement();
	 
	ResultSet rs=st.executeQuery("select * from addslots");
	
	while(rs.next())
{
		
		sid=rs.getString("sid");
		slotnumber=rs.getString("slotnumber");
		slotarea=rs.getString("slotarea");
		fromdate=rs.getString("fromdate");
		todate=rs.getString("todate");
		time=rs.getString("time");
		Amount=rs.getString("Amount");
		availability=rs.getString("availability");
	     
	 
	
%>
<tbody>
<tr><td><%=sid%></td><td><%=slotnumber%></td><td><%=slotarea%></td><td><%=fromdate%></td><td><%=todate%></td><td><%=time%></td><td><%=Amount%></td><td><%=availability %></td><td><a href="addBookingslot.jsp?sid=<%=sid%>">Book</a></td></tr>

<%
}
	
}catch(Exception e){
	out.println(e);
}

%>
 </tbody>
</table>
</div>
</body>
</html>