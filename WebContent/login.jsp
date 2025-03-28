<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- Add icon library -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
body {font-family: Arial, Helvetica, sans-serif;}
* {box-sizing: border-box;}

.input-container {
  display: -ms-flexbox; /* IE10 */
  display: flex;
  width: 70%;
  margin-bottom: 15px;
}

.icon {
  padding: 10px;
  background:#32CD32;
  color: white;
  min-width: 50px;
  text-align: center;
}

.input-field {
  width: 100%;
  padding: 10px;
  outline: none;
}

.input-field:focus {
  border: 2px solid dodgerblue;
}

/* Set a style for the submit button */
.btn {
  background-color:#32CD32;
  color: white;
  padding: 15px 20px;
  border: none;
  cursor: pointer;
  width: 70%;
  opacity: 0.9;
}

.btn:hover {
  opacity: 1;
}
</style>
</head>
<body><br><br><br>

<form action="login_action.jsp" style="max-width:500px;margin:auto" target="_parent" method="post">
  <h2 >Login Form</h2>
  
 <div class="input-container">
    <i class="fa fa-user icon"></i>
    <!-- <input class="input-field" type="text" placeholder="Email" name="email"> -->
    <select  class="input-field" name="usertype">
    <option value="select">---select---</option>
    <option  value="admin">Admin</option>
    
    <option  value="user">User</option>
  
    </select>
  </div>
  <div class="input-container">
    <i class="fa fa-envelope icon"></i>
    <input class="input-field" type="text" placeholder="name" name="name">
  </div>
  
  <div class="input-container">
    <i class="fa fa-key icon"></i>
    <input class="input-field" type="password" placeholder="pswrd" name="pswrd">
  </div>

  <button type="submit" class="btn" >Login</button><br><br>
<!-- <a href="forgottpswrd.jsp">ForgotPassword</a> -->
</form>




</body>
</html>
