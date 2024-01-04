<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<script type="text/javascript">
	function addUser(){
		
		document.fn.action="register";
		document.fn.submit();
	}
	
	function editUser() {
		
		document.fn.action="edit";
		document.fn.submit();
	}
	
	function deleteUser(){
		document.fn.action="delete";
		document.fn.submit();
	}
</script>
</head>
<body>
<form name="fn">
	<table>
		<tr>
			<th>sr no</th>
			<th>Emp Id</th>
			<th>Emp Name</th>
			<th>Emp mobno</th>
			<th>Emp email</th>
			<th>username</th>
			<th>password</th>
		</tr>
		<c:forEach items="${list}" var="e">
			<tr>
				<td><input type="radio" name="sid" value="${e.empId}"></td>
				<td>${e.empId}</td>
				<td>${e.empName}</td>
				<td>${e.empMobno}</td>
				<td>${e.empEmail}</td>
				<td>${e.uname}</td>
				<td>${e.password}</td>
			</tr>
		</c:forEach>
		<tr>
			<td><input type="submit" value="Add" onclick="addUser()"></td>
			<td><input type="submit" value="Edit" onclick="editUser()"></td>
			<td><input type="submit" value="Delete" onclick="deleteUser()"></td>
		</tr>
	</table>
</form>
</body>
</html>