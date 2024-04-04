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

String s1=null,s2=null,s3=null,s4=null,s5=null,s6=null,s7=null,status=null,msg=null,sub=null;

Random r=new Random();
int num=r.nextInt(9999)+1;
String spw=String.valueOf(num);


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

FileItem f2 = (FileItem) items.get(1);
 s2= f2.getString();
 
 
FileItem f3 = (FileItem) items.get(2);
 s3= f3.getString();
 
 
 System.out.println("KKK");
 FileItem f4 = (FileItem) items.get(3);
  s4= f4.getString();
 
 
 FileItem f5 = (FileItem) items.get(4);
     s5= f5.getString();
     
FileItem f6 = (FileItem) items.get(5);
     s6= f6.getString();    
 
 FileItem f7 = (FileItem) items.get(6);
        
 

   status="0";

 Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/onlinecarparkingdb","root","");
	Statement st=con.createStatement();
 
 	PreparedStatement ps2 = con.prepareStatement("insert into ureg (uname,pwd,uemail,mobileno,address,state,country,profile,status) values(?,?,?,?,?,?,?,?,?)");
 	 System.out.println(ps2);
 	ps2.setString(1, s1);
 	ps2.setString(2, spw);
 	ps2.setString(3, s2);
	ps2.setString(4, s3);
	ps2.setString(5, s4);
	ps2.setString(6, s5);
	ps2.setString(7, s6);
	ps2.setBinaryStream(8, f7.getInputStream(), (int) f7.getSize());
    ps2.setString(9, status);
	int i=ps2.executeUpdate();
	if(i>0)
	{
		
	msg="you have register in Car parking project.Your Username is"+s1+" and Password is:"+s2+".";
    sub="Car parking Details";
    
    
Email.sendMail(sub, msg, s4);

	out.print("insert  success");
	System.out.println("INSERT SUCCESS");
	response.sendRedirect("index.jsp");
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