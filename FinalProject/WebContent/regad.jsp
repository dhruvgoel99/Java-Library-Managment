<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<center>
<h1>
REGISTRATION OF NEW LIBRARIAN</h1></center>
<form action="Dbconn.java" method="post">
<table border=5 align="center">
<tr>
<td>Account id</td>
<td><input type="text" name="ad"></td>
</tr>
<tr>
<td>Name</td>
<td><input type="text" name="nd"></td>
</tr>
<tr>
<td>Phone</td>
<td><input type="text" maxlength="10" name="phoned"></td>
</tr>
<tr>
<td>Password</td>
<td><input type="password" name="pd" id="pass1"></td>
</tr>
<tr>
<td>Confirm Password</td>
<td><input type="password" name="g" id="pass2"></td>
</tr>
<tr>
<td colspan="2" align="center"><input type="submit" value="Register" onclick="my();">
				<a href="firstad.html"><input type="button" value="Login"></a></td>
</tr>
</table>
</form>
<script>
function my()
{
	var pass1=document.getElementById("pass1").value;
	var pass2=document.getElementById("pass2").value;
	if(pass1==pass2)
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