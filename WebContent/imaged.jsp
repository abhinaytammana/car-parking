
<%@page import="java.io.OutputStream"%>
<%@page import="java.io.InputStream"%>
<%@page import="java.sql.Blob"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
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
String id=request.getParameter("id");
try {
	ResultSet rs=null;
	 Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/onlinecarparkingdb","root","");
	
	PreparedStatement ps=con.prepareStatement("Select * from bookingslots where bid='"+id+"'");
	rs=ps.executeQuery();
	rs.next();
	Blob b=rs.getBlob("DL");
	response.setContentType(("image/jpg"));
	response.setContentLength( (int) b.length());
	InputStream is = b.getBinaryStream();
	OutputStream os = response.getOutputStream();
	byte buf[] = new byte[(int) b.length()];
	is.read(buf); os.write(buf);
	os.close();
	}
	catch (Exception e) {
	    System.out.println(e);
	}
	finally {   
		
	}

%>


</body>
</html>