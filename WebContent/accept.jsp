
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
 <%
 String id=null;
  id=request.getParameter("id");

 System.out.println(id);
int i=1;
try{
	 Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/onlinecarparkingdb","root","");
		Statement st=con.createStatement();
	 
	ResultSet rs=st.executeQuery("select * from ureg where uid='"+id+"'");

if(rs.next()){



String s1="update ureg set status='"+i+"' where uid='"+id+"'";
int j=st.executeUpdate(s1);
if(j==1)
{
	
 response.sendRedirect("adminHome.jsp");
 
}
}
}
catch(Exception e)
{
System.out.println(e);
}

%>
</body>
</html>