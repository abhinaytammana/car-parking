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

String s1=request.getParameter("id");

System.out.println(s1);

try
{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/onlinecarparkingdb","root","");
	Statement st=con.createStatement();
 
 
 
	 st.executeUpdate("delete from ureg where uid=('"+s1+"')");
		System.out.println("changed Sucessfully");
		response.sendRedirect("index.html");
		 
 
 
}
catch(Exception e){
 System.out.println(e);	

}



%>
</body>
</html>