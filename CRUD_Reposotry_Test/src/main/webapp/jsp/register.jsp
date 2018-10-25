<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<title>Register Page</title>
</head>
<body>
	<form action="register" method="post">
	<div align="center">
	<br><br> <h2>Register here...</h2> <br><br> 
		<table>
			<tr>
				<th>Name -</th>
				<td><input type="text" name="name"></td><br><br>
			<tr />
			
			<tr>
				<th>Phone -</th>
				<td><input type="text" name="phone"></td>
			</tr>

			<tr>
				<th>Address -</th>
				<td><input type="text" name="address"></td>
			</tr>

			<tr>
				<th>UserName -</th>
				<td><input type="text" name="uname"></td>
			</tr>

			<tr>
				<th>Password -</th>
				<td><input type="text" name="password"></td>
			</tr>

			<tr>
				<td> </td> <td><input type="submit" value="Register"></td>
			</tr>
		</table>
	</div>
	</form>
</body>
</html>