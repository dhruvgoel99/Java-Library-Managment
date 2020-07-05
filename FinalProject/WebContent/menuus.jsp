	<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<center>
<h1>LIBRARY MANAGMENT FOR USER</h1>
<h2>Welcome <%String s2=(String)session.getAttribute("uname");
String url="jdbc:mysql://localhost:3306/df";
String username="root";
String password="";
String query="select * from user where uid=?";
Class.forName("com.mysql.jdbc.Driver");
Connection conn=DriverManager.getConnection(url, username, password);
PreparedStatement s=conn.prepareStatement(query);
s.setString(1, s2);
ResultSet rs=s.executeQuery();
while(rs.next())
{
String user=rs.getString(2);
out.println(user);
}
conn.close(); %></h2>
<h3>Choose Your ACTION!!!</h3></center>

<form action="logout.java" method="post">
<table border=5 align="center">
<tr>
<td><a href="list.jsp"><input type="button" value="List of Book"></a></td>
<td><a href="ret.jsp"><input type="button" value="RETURN Book"></a></td>
<td><a href="issue1.jsp"><input type="button" value="ISSUE Book"></a></td>
<td><a href="bill.jsp"><input type="button" value="Bill"></a></td>
</tr>
<tr>
<td colspan="4" align="center"><input type="submit" value="Logout"></td>
</tr>
</table>
</form>
</body>
</html>