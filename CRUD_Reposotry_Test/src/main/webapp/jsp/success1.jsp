<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%-- <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> --%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Success Page </title>

<script type="text/javascript">
	
	function add() 
	{
		alert("Click Ok to Add new User...");
		document.myform.action = "addnew";
		document.myform.submit();
	}

	function del(Record)
	{
		if(Record=="")
			{
				alert("Please select Record First..."+Record);
			}
		else
		{
			alert("Sure to Delete user? "+Record);
			document.myform.action = "delete?id="+Record;
			document.myform.submit();
		}
		
	}

	function edit(Record) 
	{
		if(Record=="")
		{
			alert("Please select Record First...");
		}
		else
		{
			alert("Sure to Edit user? ");
			document.myform.action = "edit?id="+Record;
			document.myform.submit();
		}
	}
</script>

</head>

<body>
	<br><br><br>
	<div align="center">
	<h2> Details Are .... </h2>
	<form name="myform" method="post">
	
		<table border="2" cellpadding="5" cellspacing="2">
			<tr>
				<th>Id</th>
				<th>Name</th>
				<th>Address</th>
				<th>Username</th>
				<th>Password</th>
			</tr>
			
			<c:forEach items="${data}" var="s">
				<tr>
					<td><input type="radio" value="${s.id}" name="Record"></td>
					<td><c:out value="${s.name}"></c:out></td>
					<td><c:out value="${s.address}"></c:out></td>
					<td><c:out value="${s.uname}"></c:out></td>
					<td><c:out value="${s.password}"></c:out></td>
				</tr>
			</c:forEach>
			
			<tr> 
				<td colspan="6" align="center">
					<input type="button" onclick="add()" value="Add New" name="add1">
							
					<input type="button" onclick="edit(Record.value)" value="Edit"  name="edit1">
								
					<input type="button" onclick="del(Record.value)" value="Delete" name="del1">
				</td>
			</tr>
			
		</table>
		</form>
	</div>
</body>
</html>