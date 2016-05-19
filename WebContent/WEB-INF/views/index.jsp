<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<title>CybageNet</title>
</head>
<body>
<%session.invalidate();%>
${message} 
	<center>
	<h3>Login</h3>
	</center>
	<br>
	<br>
	<div class="row">
	<div class="col-md-4"></div>
	<div class="col-md-4" style="border: 1px solid green">
	<form method="post" action="ValidateServlet">
		<br>
		<input type="text" name="username" placeholder="username" class="form-control"> 
		<br>	
		<input type="password" name="password" placeholder="password" class="form-control">
		<br>
		<center><input type="submit" value="Login" class="btn btn-primary"></center>
		<br>
	</form>
	</div>
	</div>
</body>
</html>