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


	String a="admin";

	String u="user";
	
	
	
	String c=request.getParameter("usertype");
	String c1 = request.getParameter("name");
	String c2 = request.getParameter("pswrd");
	
System.out.println(c+"  "+c1+""+c2);

	try {
		
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/onlinecarparkingdb", "root", "");
	Statement st = con.createStatement();
	
	if(c.equals(a)){

		ResultSet rs = st.executeQuery("select * from admin where name='" + c1	+ "' and password='" + c2 + "' ");
	
	
	
	if (rs.next()) {
		

		response.sendRedirect("adminHome.jsp");
	}
	} 
	else if(c.equals(u)){
		ResultSet rs = st
				.executeQuery("select * from ureg where uemail='" + c1
						+ "' and pwd='" + c2+ "'  ");
	
		if(rs.next()) {
	 	/*  System.out.println(c2);   */
		 session.setAttribute("uid",rs.getString("uid"));
		response.sendRedirect("userHome.jsp");
		}
	}
	
	else{
		response.sendRedirect("index.jsp");
	}
} catch (Exception e) {
	e.printStackTrace();
	
}
%>
</body>
</html>