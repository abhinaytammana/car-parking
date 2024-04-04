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
                
<th>ID</th><th>AMOUNT</th><th>TYPE</th><th>NAME</th><th>NUMBER</th><th>CVV</th><th>EXPIRY</th></tr>
</thead>
            

<%

String uid=null,pid=null,bid=null,amount=null,ctype=null,cname=null,cnumber=null,cvv=null,cexpiry=null;
try
{
   
     uid=session.getAttribute("uid").toString();
	  Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/onlinecarparkingdb","root","");
		Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select * from payment where uid='"+uid+"'");
	while(rs.next())
{
		pid=rs.getString("pid");
		amount=rs.getString("amount");
		ctype=rs.getString("ctype");
        cname=rs.getString("cname");
		cnumber=rs.getString("cnumber");
	      cvv=rs.getString("cvv");
	      cexpiry=rs.getString("cexpiry");
	       
	 
	
%>
<tbody>
<tr><td><%=pid%></td><td><%=amount%></td><td><%=ctype%></td><td><%=cname%></td><td><%=cnumber%></td><td><%=cvv%></td><td><%=cexpiry %></td></tr>

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