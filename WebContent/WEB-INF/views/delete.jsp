<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<title>Delete Books</title>
</head>
<body>
	<jsp:include page="headeradmin.jsp"/>
	<div class="row" style="margin-top: 18em">
		<div class="col-md-4"></div>
		<div class="col-md-4" style="border:1px solid green; padding: 10px;">
	<h4>
 	Welcome ${sessionScope.user}
	</h4>
	<%-- Welcome <%out.println(session.getAttribute("user"));%> --%>
	<br>
	<form method="post" action="BookDel">
		<input type="text" name="bookname" class="form-control">
		<br>
		<input type="submit" value="Search" class="btn btn-primary" style="float:right">
	</form>
	</div>
	</div>
 
</body>
</html>