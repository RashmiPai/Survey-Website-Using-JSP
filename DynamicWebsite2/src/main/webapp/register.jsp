<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registration_page</title>
<link rel="stylesheet" type="text/css" href="style.css">
</head>

<body>
<form action="Registercontroller" method="post">
<div class="menu">
<a href="index.jsp">Home</a>
</div><br><br>
<h2>Account</h2><br>
<center><input id= "first" style="text-indent:20px;" type="text" name="firstname" placeholder="First name"><br></center>
<center><input id= "last" style="text-indent:20px;" type="text" name="lastname" placeholder="Last name"><br></center>
<center><input id= "user" style="text-indent:20px;" type="text" name="uid" placeholder="User name"><br></center>
<center><input id= "email" style="text-indent:20px;" type="email" name="emailid" placeholder="Email"><br><center>
<center><input id= "password" style="text-indent:20px;" type="password" name="password" placeholder="Password"><br><center>
<center><input id= "confirmpass" style="text-indent:20px;" type="password" name="confirm" placeholder="Confirm password"><br><center>
<center><input id= "contact" style="text-indent:20px;" type="text" name="contact" placeholder="Contact number"><br><center>
<center><input id= "DOB" style="text-indent:20px;" type="date" name="dob"><br><center>
<br>
<center><input id="in"  type="submit" name="submit" value="Sign up"></input><center> 
</form>
</body>
</html>