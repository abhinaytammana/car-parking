<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="https://fonts.googleapis.com/css?family=Roboto:400,700" rel="stylesheet">
<title>Bootstrap Simple Login Form with Blue Background</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> 
<title>Insert title here</title>
<style type="text/css">
	 body{
		color: #3598dc;
	 	/*  background:#AFEEEE;   */
		font-family: 'Roboto', sans-serif;
	} 
    .form-control{
		height: 41px;
		background: #f2f2f2;
		box-shadow: none !important;
		border: none;
	}
	.form-control:focus{
		background: #e2e2e2;
	}
    .form-control, .btn{        
        border-radius: 3px;
    }
	.signup-form{
		width: 390px;
		margin: 30px auto;
	}
	.signup-form form{
		color: #999;
		border-radius: 3px;
    	margin-bottom: 15px;
        background: #fff;
        box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
        padding: 30px;
    }
	.signup-form h2 {
		color: #333;
		font-weight: bold;
        margin-top: 0;
    }
    .signup-form hr {
        margin: 0 -30px 20px;
    }    
	.signup-form .form-group{
		margin-bottom: 20px;
	}
	.signup-form input[type="checkbox"]{
		margin-top: 3px;
	}
	.signup-form .row div:first-child{
		padding-right: 10px;
	}
	.signup-form .row div:last-child{
		padding-left: 10px;
	}
    .signup-form .btn{        
        font-size: 16px;
        font-weight: bold;
		background: #333;
		border: none;
		min-width: 140px;
    }
	.signup-form .btn:hover, .signup-form .btn:focus{
		background: #2389cd !important;
        outline: none;
	}
    .signup-form a{
		color: #fff;
		text-decoration: underline;
	}
	.signup-form a:hover{
		text-decoration: none;
	}
	.signup-form form a{
		color: #3598dc;
		text-decoration: none;
	}	
	.signup-form form a:hover{
		text-decoration: underline;
	}
    .signup-form .hint-text {
		padding-bottom: 15px;
		text-align: center;
		color:#333;
    }
</style>
</head>
<body>
<%

String 	sid=null,slotnumber=null,slotarea=null,fromdate=null,todate=null,time=null,Amount=null,availability=null,uid=null;

 sid=request.getParameter("sid");

try
{
   
     
     
	  Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/onlinecarparkingdb","root","");
		Statement st=con.createStatement();
	 
	ResultSet rs=st.executeQuery("select * from addslots  where sid='"+sid+"'");
	
	if(rs.next())
{
		
		sid=rs.getString("sid");
		slotnumber=rs.getString("slotnumber");
		slotarea=rs.getString("slotarea");
		fromdate=rs.getString("fromdate");
		todate=rs.getString("todate");
		time=rs.getString("time");
		Amount=rs.getString("Amount");
		availability=rs.getString("availability");
	     
	 


%>
<div class="signup-form">
    <form action="bookingslot_action.jsp" method="post" target="_parent" enctype="multipart/form-data">
		<h2>BOOK SLOT</h2>
		<hr>
        <div class="form-group">
			 <label>Vechicle Type</label>
            <input type="text" class="form-control" name="f1" placeholder="VechicleType" required="required">
        </div>
         <div class="form-group">
			 <label>Vechicle Model</label>
            <input type="text" class="form-control" name="f2" placeholder="VechicleModel" required="required">
        </div>
   
   
                      <div class="form-group">
                            <label>From Date</label>
                            <input type="date" class="form-control"  placeholder="FromDate" name="f3">
                          </div>
                            <div class="form-group">
                             <label>ToDate</label>
			       	<input type="date" class="form-control" name="f4" placeholder="ToDate" required="required">
			     	
                     </div>
                     <div class="form-group">
                      <label>Time</label>
			       	<input type="text" class="form-control" name="f5" placeholder="Time" required="required">
			     	
                     </div>
                     <div class="form-group">
                      <label>Area</label>
			       	<input type="text" class="form-control" name="f6" placeholder="Area" value="<%=slotarea %>" required="required">
			     	
                     </div>
                       <div class="form-group">
                       <label>SLOT</label>
                        <input type="text" class="form-control"  placeholder="slot" name="f7">
                      </div>
                          <div class="form-group">
                      <label>Registration Certificate</label>
                        <input type="file" class="form-control"  placeholder="Rc" name="f8">
                      </div>
                      <div class="form-group">
                      <label>Driving License</label>
                        <input type="file" class="form-control"  placeholder="Driving License" name="f9">
                      </div>
                     
                     
        
		<div class="form-group">
            <button type="submit" class="btn btn-primary btn-lg">addslot</button>
        </div>
        	
    </form>

</div>

<%
}
	}
	catch(Exception e){
	out.println(e);
}


%>
</body>
</html>