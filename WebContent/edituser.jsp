
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

<title>Insert title here</title>
</head>
<body>
<%

String id=request.getParameter("id");
try
{
   
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/onlinecarparkingdb","root","");
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select * from ureg where uid='"+id+"'");
	System.out.println("sucess");
	if(rs.next())
	{		   
		 
		 
	        String uname=rs.getString("uname");
	        String mobileno=rs.getString("mobileno");
			String uemail=rs.getString("uemail");
			String address=rs.getString("address");
			String state=rs.getString("state");
			String country=rs.getString("country");
				
%>
<div class="row">
            <div class="col-sm-4"></div>
            <div class="col-sm-6">
                <h4>UPDATE USER</h4>
            </div>
            <div class="col-sm-2"></div>
        </div>
<form action="updates.jsp" method="post"  enctype="multipart/form-data" target="_parent">


<div class="row">
        <div class="col-sm-4"></div>
        <div class="col-sm-1"><label style="margin-top:5px;"> NAME</label></div>
     <div class="col-sm-3"><input type="text" placeholder="Name" name="uname" value="<%=uname%>" class="form-control" required></div>
        <div class="col-sm-4"></div>
    </div><br>
    
    
    <div class="row">
        <div class="col-sm-4"></div>
        <div class="col-sm-1"><label style="margin-top:5px;">MOBILE NO</label></div>
     <div class="col-sm-3"><input type="text" placeholder="Mobile" name="mobileno" value="<%=mobileno%>" class="form-control" required></div>
        <div class="col-sm-4"></div>
    </div><br>


 <div class="row">
        <div class="col-sm-4"></div>
        <div class="col-sm-1"><label style="margin-top:5px;">Email-Id</label></div>
     <div class="col-sm-3"> <input type="email" placeholder="Email" name="uemail"  value="<%=uemail%>"  class="form-control" required></div>
        <div class="col-sm-4"></div>
    </div><br>
<div class="row">
        <div class="col-sm-4"></div>
        <div class="col-sm-1"><label style="margin-top:5px;">ADDRESS:</label></div>
       <div class="col-sm-3"><input type="text" placeholder="address" name="address"   value="<%=address%>" class="form-control"  required></div>
        <div class="col-sm-4"></div>
    </div><br>
    
<div class="row">
        <div class="col-sm-4"></div>
        <div class="col-sm-1"><label style="margin-top:5px;"> STATE</label></div>
     <div class="col-sm-3"><input type="text" placeholder="State" name="state" value="<%=state%>" class="form-control" required></div>
        <div class="col-sm-4"></div>
    </div><br>
    
    <div class="row">
        <div class="col-sm-4"></div>
        <div class="col-sm-1"><label style="margin-top:5px;">COUNTRY</label></div>
     <div class="col-sm-3"><input type="text" placeholder="country" name="country" value="<%=country%>" class="form-control" required></div>
        <div class="col-sm-4"></div>
    </div><br>
    
 
  
 <div class="row">
        <div class="col-sm-4"></div>
        <div class="col-sm-1"><label style="margin-top:5px;">Photo</label></div>
       <div class="col-sm-3"><input type="file" placeholder="Image" name="image"  class="form-control" required></div>
        <div class="col-sm-4"></div>
    </div><br>
    <div class="row">
        <div class="col-sm-4"></div>
        <div class="col-sm-1"></div>
     <div class="col-sm-3"><input type="hidden"  name="uid" value="<%=id%>" class="form-control" required></div>
        <div class="col-sm-4"></div>
    </div><br>
    
    
	 <div class="row">
        <div class="col-sm-5"></div>
        <div class="col-sm-4"><input type="submit"  class="btn btn-primary" value="Update"> <input type="reset"  class="btn btn-primary" value="Cancel"></div>
        <div class="col-sm-3"></div>
    </div><br>
	<%
}
}
catch(Exception e){
	out.println(e);
}

%>
</table>
</form>
</body>
</html>