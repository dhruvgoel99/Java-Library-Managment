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
<% String s2=(String)session.getAttribute("uname");
String url="jdbc:mysql://localhost:3306/df";
String username="root";
String password="";
String query="select * from user where uid=?";
Class.forName("com.mysql.jdbc.Driver");
Connection conn=DriverManager.getConnection(url, username, password);
PreparedStatement s=conn.prepareStatement(query);
s.setString(1, s2);
ResultSet rs=s.executeQuery();%>
<table border=5 align="center">
<tr>
<td>The total amount to be paid</td>
<%while(rs.next())
{
	String user1=rs.getString(8);%>
<td><%out.println(user1);%></td>
<%} %>
<tr><td colspan="2" align="center"><a href="menuus.jsp"><input type="button" value="Back to Menu"></a></td></tr>
</table>
</body>
</html>