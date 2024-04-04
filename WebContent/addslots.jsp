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
<div class="signup-form">
    <form action="addslot_action.jsp" method="post" target="_parent" >
		<h2>Add Slot Details</h2>
		<p>Adding slot details</p>
		<hr>
        <div class="form-group">
			
            <input type="text" class="form-control" name="f1" placeholder="SlotNumber" required="required">
        </div>
   
                      <div class="form-group">
                           
                            <input type="text" class="form-control"  placeholder="SlotArea" name="f2">
                          </div>
                            <div class="form-group">
			       	<input type="date" class="form-control" name="f3" placeholder="FromDate" required="required">
			     	
                     </div>
                     <div class="form-group">
			       	<input type="date" class="form-control" name="f4" placeholder="ToDate" required="required">
			     	
                     </div>
                          <div class="form-group">
                      
                        <input type="text" class="form-control"  placeholder="Time" name="f5">
                      </div>
                       <div class="form-group">
                      
                        <input type="text" class="form-control"  placeholder="Amount" name="f7">
                      </div>
                       <div class="form-group">
                      
                        <input type="text" class="form-control"  placeholder="Availability" name="f6">
                      </div>
                    
        
		<div class="form-group">
            <button type="submit" class="btn btn-primary btn-lg">addslot</button>
        </div>
    </form>

</div>
</body>
</html>