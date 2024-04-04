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

String s1=request.getParameter("f1");
System.out.println(s1);
String s2=request.getParameter("f2");

System.out.println(s2);
if(s1.equalsIgnoreCase("admin")&& s2.equalsIgnoreCase("admin"))
{
	%>
	<script type="text/javascript">
    alert("success");
	</script>
	<%
	
	response.sendRedirect("adminHome.jsp");
}
else{
	%>
	<script type="text/javascript">
	alert("fail");
	
	</script>
	<%
}
	%>
</body>
</html>