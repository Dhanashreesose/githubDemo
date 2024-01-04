<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<center>
 <form action="updateData">
	<table style="border-spacing: 30px; margin-top: 150px; background-color: pink;">
		<tr>
			<th colspan="2"><center><h1>Update Information</h1></center></th>
		</tr>
		<tr>
			<td><h4>UserName :</h4></td>
			<td><input type="text" style="height:40px; width: 150px" name="uname" value="${data.uname}"></td>
		</tr>
		<tr>
			<td><h4>Password :</h4></td>
			<td><input type="text" style="height: 40px; width:150px" name="password" value="${data.password }"></td>
		</tr>
		<tr>
			<td><input type="hidden" style="height:40px; width: 150px" name="empId" value="${data.empId }"></td>
		</tr>
		<tr>
			<td><h4>Employee Name :</h4></td>
			<td><input type="text" style="height: 40px; width:150px" name="empName" value="${data.empName }"></td>
		</tr>
		<tr>
			<td><h4>Employee Mobno :</h4></td>
			<td><input type="number" style="height:40px; width: 150px" name="empMobno" step="any" value="${data.empMobno }"></td>
		</tr>
		<tr>
			<td><h4>Employee Email :</h4></td>
			<td><input type="text" style="height: 40px; width:150px" name="empEmail" value="${data.empEmail }"></td>
		</tr>
		<tr>
			<td colspan="2"><center><input type="submit" value="update" style="height: 40px; width: 80px; background-color: gray;" ></center></td>
		</tr>
	</table>
</form>
</center>
	
</body>
</html>