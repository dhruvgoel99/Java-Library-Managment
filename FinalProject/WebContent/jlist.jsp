<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import = "java.sql.*" %>
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
String query="select * from user,book where user.uid=? and (user.bida=book.bid or user.bidu=book.bid or user.bidau=book.bid)";
Class.forName("com.mysql.jdbc.Driver");
Connection conn=DriverManager.getConnection(url, username, password);
PreparedStatement s=conn.prepareStatement(query);
s.setString(1, s2);
ResultSet rs=s.executeQuery();%>
<table border=5 align="center">
<tr>
<th>User Id</th>
<th>User Name</th>
<th>Book Id</th>
<th>Book Name</th>
<th>Book Edition</th>
<th>Author Name</th>
<th>Publisher Name</th>
<th>Issue Rate</th>
</tr>
<%
while(rs.next())
{
	String user=rs.getString(1);
	String user1=rs.getString(2);
	String user2=rs.getString(9);
	String user3=rs.getString(10);
	String user4=rs.getString(11);
	String user5=rs.getString(12);
	String user6=rs.getString(13);
	String user7=rs.getString(14);
%>
<tr>
<td><%out.print(user); %></td>
<td><%out.print(user1); %></td>
<td><%out.print(user2); %></td>
<td><%out.print(user3); %></td>
<td><%out.print(user4); %></td>
<td><%out.print(user5); %></td>
<td><%out.print(user6); %></td>
<td><%out.print(user7); %></td>
</tr>
<%
}%>
<tr><td colspan="8" align="center"><a href="menuus.jsp"><input type="button" value="Back to Menu"></a></td></tr>
</table>
<%conn.close(); %>
</body>
</html>