<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="org.apache.commons.fileupload.FileItem"%>
<%@page import="org.apache.commons.fileupload.servlet.ServletFileUpload"%>
<%@page import="org.apache.commons.fileupload.disk.DiskFileItemFactory"%>
<%@page import="Action.Email"%>
<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
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


/* String u=null;int u2=0,u1=0;
try
{
	

 Class.forName("com.mysql.jdbc.Driver");
 Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/onlinecarparkingdb","root","");
PreparedStatement ps=con.prepareStatement("select * from bookingslots");
ResultSet rs=ps.executeQuery();
while(rs.next())
{
u=rs.getString("bid");
}
if(u==null)
{
 u2=u1+1;
}
else
{
u1=Integer.parseInt(u);
u2=u1+1;
}
String u3=Integer.toString(u2);



}
catch(Exception e){
  out.println(e);	

}
 */

String s1=null,s2=null,s3=null,s4=null,s5=null,s6=null,s7=null,s8=null,s9=null,uid=null;

uid=session.getAttribute("uid").toString();


try {
	DiskFileItemFactory factory=new DiskFileItemFactory();
	ServletFileUpload sfu=new ServletFileUpload(factory);
if(!ServletFileUpload.isMultipartContent(request))
{
	System.out.println("Sorry. No Image Uploaded");
	return;
}

List items = sfu.parseRequest(request);

FileItem f1 = (FileItem) items.get(0);
s1= f1.getString();
System.out.println(s1);

FileItem f2 = (FileItem) items.get(1);
 s2= f2.getString();
 System.out.println(s2);
 
FileItem f3 = (FileItem) items.get(2);
 s3= f3.getString();
 System.out.println(s3);
 
 
 System.out.println("KKK");
 FileItem f4 = (FileItem) items.get(3);
  s4= f4.getString();
  System.out.println(s4);
 
 
 FileItem f5 = (FileItem) items.get(4);
     s5= f5.getString();
     System.out.println(s5);
     
FileItem f6 = (FileItem) items.get(5);
     s6= f6.getString();    
     System.out.println(s6);
 
FileItem f7 = (FileItem) items.get(6);
     s7= f7.getString(); 
     System.out.println(s7);
     
 FileItem f8 = (FileItem) items.get(7);
     s8= f8.getString(); 
     System.out.println(s8);
 FileItem f9 = (FileItem) items.get(8);
       s9=f9.getString(); 
       System.out.println(s9);
 
       SimpleDateFormat formatter = new SimpleDateFormat(" dd MM yyyy, hh:mm:ss a");
       String bd = formatter.format(new Date());
       System.out.println("Today : " + bd);

  

 Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/onlinecarparkingdb","root","");
	Statement st=con.createStatement();
 
 	PreparedStatement ps2 = con.prepareStatement("insert into bookingslots (uid,vtype,vmodel,bdate,fdate,todate,time,area,slot,rc,DL) values(?,?,?,?,?,?,?,?,?,?,?)");
 	 System.out.println(ps2);
 	ps2.setString(1, uid);
 	ps2.setString(2, s1);
 	ps2.setString(3, s2);
 	ps2.setString(4, bd);
	ps2.setString(5, s3);
	ps2.setString(6, s4);
	ps2.setString(7, s5);
	ps2.setString(8, s6);
	ps2.setString(9, s7);
	ps2.setString(10, s8);
	ps2.setBinaryStream(11, f7.getInputStream(), (int) f7.getSize());
   
	int i=ps2.executeUpdate();
	if(i>0)
	{
		
	

	out.print("insert  success");
	System.out.println("INSERT SUCCESS");
	response.sendRedirect("payment.jsp");
	}
	else{
		out.print("try once more");
	}
}
catch(Exception e){
  out.println(e);	

}
%>

</body>
</html>