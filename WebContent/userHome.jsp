<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style type="text/css">
  .footer {
    position: fixed;
    left: 0;
    bottom: 0;
    width: 100%;
    background-color:#32CD32;
    color: white;
    text-align: center;
    border-radius: 10px;
  }
  a span:hover{
    color:rgba(255, 99, 71, 0.5);
  }
   
</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<title>Insert title here</title>
</head>
<body>
<div style="background-color:#32CD32; height:90px; text-align: center; margin-top: -20px;">  
      <h1 style="color:white; font-family:Arial black; position: relative; padding: 15px;">Online Car Parking System</h1>
  </div>
  <nav class="navbar navbar-inverse " style="background-color:#000000;font-family:Arial black;">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" style="color:white;background-color:	#FFEBCD" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar" style="color:white;"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="#"></a>
    </div>
    <div class="collapse navbar-collapse nav-justified " id="myNavbar" >
      <ul class="nav navbar-nav" style="font-size: 20px;">
          <li><a class="nav-link" href="" target="" style="color:white"><span>Home</span></a></li>
          <li><a class="nav-link " href="viewprofile.jsp" target="iframe" style="color:white"><span>ViewProfile</span></a></li>
         <li><a class="nav-link" href="viewslots.jsp" target="iframe" style="color:white"><span>View Slots</span></a></li> 
        <li><a class="nav-link " href="viewparking.jsp" target="iframe" style="color:white"><span>ViewParkigDetails<span></a></li>
           <li><a class="nav-link " href="viewpayment.jsp" target="iframe" style="color:white"><span>ViewBookingdetails</span></a></li> 
           <li><a class="nav-link " href="logout.jsp" target="" style="color:white"><span>Logout</span></a></li>
          
      </ul>
    </div>
  </nav>

    <iframe  name="iframe" id="iframe" style="width: 100%; height: 450px; border: none; margin-left: 5px;"></iframe>
  <br>
  <div class="footer">
    <h4> Copy Rights 2019</h4>
  </div>
</body>
</html>