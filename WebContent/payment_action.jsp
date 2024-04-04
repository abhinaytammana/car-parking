<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%


String s1=request.getParameter("f1");
String s2=request.getParameter("f2");
String s3=request.getParameter("f3");
String s4=request.getParameter("f4");
String s5=request.getParameter("f5");
String s6=request.getParameter("f6");
String s7=request.getParameter("f7");

String uid=session.getAttribute("uid").toString();

try
{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/onlinecarparkingdb","root","");
	Statement st=con.createStatement();
	int i=st.executeUpdate("insert into payment (amount,ctype,cname,cnumber,cvv,cexpiry,pin,uid) values('"+s1+"','"+s2+"','"+s3+"','"+s4+"','"+s5+"','"+s6+"','"+s7+"','"+uid+"')");

if(i>0){
	out.println("Registered successfully");
	response.sendRedirect("adminHome.jsp");
}

else{
	out.println("connection error");
}
con.close();
}
catch(Exception e)
{
e.printStackTrace();	
}

%>
</body>
</html>