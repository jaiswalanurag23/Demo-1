<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<title>Login Page</title>
${msg}
${msg1}
</head>
<body>
	<div align="center">
		<form action="log">

			<br><br>
			<h2>Login here...</h2>

			Username : <input type="text" name="uname"> <br><br> 
			Password : <input type="text" name="password"> <br><br> 
			
			<input type="submit" value="login"> 
			<a href="regi">Register	Here</a>
		</form>
	</div>
</body>
</html>
