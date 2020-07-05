<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<center>
<h1>
REGISTRATION OF NEW LIBRARIAN</h1>
<h3>First Register here!!!<br>or<br>Again goto login page with correct password and id...</h3></center>
<form action="Dbconn.java" method="post">
<table border=5 align="center">
<tr>
<td>Account id</td>
<td><input type="text" name="a"></td>
</tr>
<tr>
<td>Name</td>
<td><input type="text" name="n"></td>
</tr>
<tr>
<td>Phone</td>
<td><input type="text" maxlength="10" name="phone"></td>
</tr>
<tr>
<td>Password</td>
<td><input type="password" name="p" id="pass1"></td>
</tr>
<tr>
<td>Confirm Password</td>
<td><input type="password" name="g" id="pass2"></td>
</tr>
<tr>
<td colspan="2" align="center"><input type="submit" value="Register" onclick="my()">
				<a href="firstad.html"><input type="button" value="Login"></a></td>
</tr>
</table>
</form>
<script>
function my()
{
	var p=document.getElementById("pass1").value;
	var g=document.getElementById("pass2").value;
	if(p==g)
		{
		}
	else
		{
		alert("Passwords don't Match!!!");
		}
}
</script>
</body>
</html>