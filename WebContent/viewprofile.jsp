
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
                
<th>ID</th><th>NAME</th><th>MOBILE</th><th>EMAIL</th><th>ADDRESS</th><th>STATE</th><th>COUNTRY</th><th>IMAGE</th><th style="width:70px">Action</th> <th colspan="2">DETAILS</th></tr>
</thead>
            

<%

String id=null,uname=null,mobileno=null,uemail=null,state=null,country=null,address=null,status=null;

try
{
   id=session.getAttribute("uid").toString();
     
	  Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/onlinecarparkingdb","root","");
		Statement st=con.createStatement();
	 
	ResultSet rs=st.executeQuery("select * from ureg where uid='"+id+"'");
	
	while(rs.next())
{
		
		  id=rs.getString("uid");
		 uname=rs.getString("uname");
         mobileno=rs.getString("mobileno");
         uemail=rs.getString("uemail");
		 address=rs.getString("address");
		 state=rs.getString("state");
		 country=rs.getString("country");
		
	     status=rs.getString("status");
	     
	   String approve;
			if(status.equals("1")){
				
				approve="ACCEPTED";
			}else{
				approve="REJECTED";
			} 
			 
%>
<tbody>
<tr><td><%=id%></td><td><%=uname%></td><td><%=mobileno%></td><td><%=uemail%></td><td><%=address%></td><td><%=state%></td><td><%=country%></td><td><img src="image.jsp?id=<%=id%>" width="100px" height="50px"></td><td><%=approve%></td><td><a href="edituser.jsp?id=<%=id%>">EDIT</a></td>
<th> <a href="delete.jsp?id=<%=id%>">Delete</a></th>
</tr>

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