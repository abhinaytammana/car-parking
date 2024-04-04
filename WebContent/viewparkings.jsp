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
<body>
<body><br><br>
    <div class="container">
        <table class="table table-bordered">
            <thead>
                <tr style="background-color: #32CD32/* rgb(44, 126, 194) */;color:white;">
                
<th>ID</th><th>VTYPE</th><th>VMODEL</th><th>BOOKDATE</th><th>FDATE</th><th>TODATE</th><th>TIME</th><th>AREA</th><th>SLOT</th><th>RC</th><th>DL</th></tr>
</thead>
            

<%

String 	bid=null,uid=null,uname=null,vtype=null,vmodel=null,bdate=null,fdate=null,todate=null,time=null,area=null,slot=null;

try
{
   
    
     
	  Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/onlinecarparkingdb","root","");
		Statement st=con.createStatement();
	 
	ResultSet rs=st.executeQuery("select * from bookingslots");
	
	while(rs.next())
{
		
	
		uid=rs.getString("uid");
		vtype=rs.getString("vtype");
		vmodel=rs.getString("vmodel");
		bdate=rs.getString("bdate");
		fdate=rs.getString("fdate");
		todate=rs.getString("todate");
		time=rs.getString("time");
		area=rs.getString("area");
		slot=rs.getString("slot");
	
	     
	 
	
%>
<tbody>
<tr><td><%=uid%></td>
<%-- <%
try{

Class.forName("com.mysql.jdbc.Driver");
Connection cons=DriverManager.getConnection("jdbc:mysql://localhost:3306/onlinecarparkingdb","root","");
Statement sts=cons.createStatement();

ResultSet rss=st.executeQuery("select * from ureg where  uid='"+uid+"'");

if(rss.next())
{

uname=rss.getString("uname");


%>

<td><%=uname%></td>

<%}}catch(Exception e){
	out.println(e);
}
 %> --%>
<td><%=vtype%></td><td><%=vmodel%></td><td><%=bdate%></td><td><%=fdate%></td><td><%=todate%></td><td><%=time%></td><td><%=area %></td><td><%=slot %></td>   <td><img src="imager.jsp?id=<%=bid%>" width="100px" height="50px"></td> <td>
<img src="imaged.jsp?id=<%=bid%>" width="100px" height="50px"></td></tr>

<%
}
	
}catch(Exception e){
	out.println(e);
}

%>
 </tbody>
</table>
</body>
</html>