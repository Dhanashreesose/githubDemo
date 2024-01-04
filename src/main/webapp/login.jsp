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
 <form action="login">
	<table style="border-spacing: 30px; margin-top: 150px; background-color: pink;">
		<tr>
			<th colspan="2"><center><h1>Login</h1></center></th>
		</tr>
		<tr>
			<td><h4>UserName :</h4></td>
			<td><input type="text" style="height:40px; width: 150px" name="uname"></td>
		</tr>
		<tr>
			<td><h4>Password :</h4></td>
			<td><input type="text" style="height: 40px; width:150px" name="password"></td>
		</tr>
		<tr>
			<td colspan="2"><center><input type="submit" style="height: 40px; width: 80px; background-color: gray;" ></center></td>
		</tr>
		<tr>
			<td><a href="register"><h3>Register Here</h3></a>
		</tr>
	</table>
 </form>
 </center>
</body>
</html>