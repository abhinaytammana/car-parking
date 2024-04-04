<%@page import="org.apache.commons.fileupload.FileItem"%>
<%@page import="org.apache.commons.fileupload.servlet.ServletFileUpload"%>
<%@page import="org.apache.commons.fileupload.disk.DiskFileItemFactory"%>
<%@page import="java.sql.*"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Random"%>
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


String id=null,name=null,mobileno=null,email=null,state=null,address=null,country=null;


try {
	DiskFileItemFactory factory=new DiskFileItemFactory();
	ServletFileUpload sfu=new ServletFileUpload(factory);
if(!ServletFileUpload.isMultipartContent(request))
{
	System.out.println("Sorry. No Image Uploaded");
	return;
}

List items = sfu.parseRequest(request);

FileItem fc1 = (FileItem) items.get(0);
 name= fc1.getString();

FileItem fc2 = (FileItem) items.get(1);
 mobileno= fc2.getString();
 
 FileItem fc3 = (FileItem) items.get(2);
     email= fc3.getString();
 
 FileItem fc4 = (FileItem) items.get(3);
         address= fc4.getString();
 
 
 FileItem fc5 = (FileItem) items.get(4);
          state= fc5.getString();
 
 FileItem fc6 = (FileItem) items.get(5);
     country= fc6.getString();
      
 FileItem fc7 = (FileItem) items.get(6);
 
 FileItem fc8 = (FileItem) items.get(7);
      id=fc8.getString();
 
      System.out.println(name+""+mobileno+""+email+""+state+""+country+""+address+""+id);

 
      Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/onlinecarparkingdb","root","");
		Statement st=con.createStatement();
	 
 	PreparedStatement ps2 = con.prepareStatement("update ureg set uname=?,mobileno=?,uemail=?,address=?,state=?,country=?,profile=?  where uid=? ");
	ps2.setString(1, name);
	ps2.setString(2, mobileno);
	ps2.setString(3,email);
	ps2.setString(4, address);
	ps2.setString(5, state);
	ps2.setString(6,country);
	ps2.setBinaryStream(7, fc7.getInputStream(), (int) fc7.getSize());
	ps2.setString(8,id);
int i=ps2.executeUpdate();
if(i>0)
{
out.print("insert  success");
System.out.println("INSERT SUCCESS");
response.sendRedirect("index.jsp");
}
else{
	out.print("try once more");
}

}catch
(Exception e)
{
e.printStackTrace();
}



%>

</body>
</html>