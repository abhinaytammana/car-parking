<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>

body {
    background:#333;
}
.form_bg {
    background-color:#eee;
    color:#666;
    padding:20px;
    border-radius:10px;
    position: absolute;
    border:1px solid #fff;
    margin: auto;
    top: 0;
    right: 0;
    bottom: 0;
    left: 0;
    width: 320px;
    height: 280px;
}
.align-center {
    text-align:center;
}

</style>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div class="container">
    <div class="row">
        <div class="form_bg">
            <form  action="adminlogin_action.jsp" method="post" target="_parent">
                 <h2 class="text-center" style="color:black;">User Login </h2>
                <br/>
                <div class="form-group">
                    <label>Email</label>
                    <input type="text" class="form-control" name="f1"  placeholder="Enter your name">
                </div>
                <div class="form-group">
                    <label>New password</label>
                    <input type="password" class="form-control" name="f2"  placeholder="Enter Your password">
                
                    </div>
                    <br/>
                   <div class="align-center">
                 <button type="submit" class="btn btn-success" id="login">Login</button>
                 
                    </div>
            </form>
        </div>
    </div>
</div>
        
</body>
</html>