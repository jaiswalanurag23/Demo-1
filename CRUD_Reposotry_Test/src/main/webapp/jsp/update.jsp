<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>

<title>Update Page</title>
</head>
<body>
	<br><br><br>
	<div align="center">
	<h2> Update here .... </h2>
	
	<form action="update" method="post">
		<table border="2" cellpadding="5" cellspacing="2">

			<tr>
				<th>Select</th>
				<td><input type="hidden" name="id" value="${up.id}"></td>
			</tr>
			
			<tr>
				<th>Name</th>
				<td><input type="text" name="name" value="${up.name}"></td>
			</tr>
			
			<tr>
				<th>Address</th>
				<td><input type="text" name="address" value="${up.address}"></td>
			</tr>
			
			<tr>
				<th>Username</th>
				<td><input type="text" name="uname" value="${up.uname}"></td>
			</tr>
			
			<tr>
				<th>Password</th>
				<td><input type="text" name="password" value="${up.password}"></td>
			</tr>
			
			<tr>
				<th></th>
				<td><input type="submit" value="Save"></td>
			</tr>
			
		</table>
	</form>
	</div>
</body>
</html>