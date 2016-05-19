<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<title>Dashboard</title>
</head>
<body>
	<jsp:include page="headeruser.jsp"/>
	<div class="row" style="margin-top: 18em">
		<div class="col-md-4"></div>
		<div class="col-md-4" style="border:1px solid green; padding: 10px;">
		<%-- <%HttpSession sess = request.getSession();%> --%>
	<h4>
 	<%-- Welcome <%out.print(sess.getAttribute("user"));%>  --%>
	Welcome ${sessionScope.user}
	</h4>
	<form method="post" action="SearchBook">
		<input type="text" name="bookname" class="form-control">
		<input type="submit"  class="btn btn-primary" value="Search">
	</form>
	</div>
	</div>
	<div class="row" style="padding-top: 25px;">
	<div class="col-md-5"></div>
	<div class="col-md-4" >
	<a href="Logout" class="btn btn-default">Logout</a>
	</div>
	</div>
</body>
</html>