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
Addition of new book</h1></center>
<form action="jadd.java" method="post">
<table border=5 align="center">
<tr>
<td>Book id</td>
<td><input type="text" name="a"></td>
</tr>
<tr>
<td>Name</td>
<td><input type="text" name="n"></td>
</tr>
<tr>
<td>Edition</td>
<td><input type="text" name="g"></td>
</tr>
<tr>
<td>Author Name</td>
<td><input type="text" name="au"></td>
</tr>
<tr>
<td>Publisher</td>
<td><input type="text" name="p"></td>
</tr>
<tr>
<td>Issue Rate</td>
<td><input type="text" name="r"></td>
</tr>
<tr>
<td colspan="2" align="center"><input type="submit" value="Add to Library">
				<a href="menuad.html"><input type="button" value="Back to menu"></a></td>
</tr>
</table>
</form>
</body>
</html>