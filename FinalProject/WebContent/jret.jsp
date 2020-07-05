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
<%
String s2=(String)session.getAttribute("uname");
String s1=request.getParameter("a");
String s3=request.getParameter("n");
String url="jdbc:mysql://localhost:3306/df";
String username="root";
String password="";
String query="update user set bida=null where bida=? and uid=? ";
String query1="update user set bidu=null where bidu=? and uid=? ";
String query2="update user set bidau=null where bidau=? and uid=? ";
String query3="update user set bill=0 where uid=?";
String query4="update user set bill=bill-(select irate from book where book.bid=? and user.uid=?)";
Class.forName("com.mysql.jdbc.Driver");
Connection conn=DriverManager.getConnection(url, username, password);
PreparedStatement s=conn.prepareStatement(query);
s.setString(1, s1);
s.setString(2, s2);
int a=s.executeUpdate();
PreparedStatement d=conn.prepareStatement(query3);
d.setString(1, s2);
d.executeUpdate();
if(a==0)
{
	PreparedStatement sf=conn.prepareStatement(query1);
	sf.setString(1, s1);
	sf.setString(2, s2);
	int b=sf.executeUpdate();
	if(b==0)
	{
		PreparedStatement sd=conn.prepareStatement(query2);
		sd.setString(1, s1);
		sd.setString(2, s2);
		int f=sd.executeUpdate();
		if(f==0)
		{
			ServletContext sc=getServletContext();
			sc.getRequestDispatcher("/g.jsp").forward(request, response);						
		}
		else
		{
			PreparedStatement j=conn.prepareStatement(query4);
			j.setString(1, s1);
			j.setString(2, s3);
			j.executeUpdate();
			ServletContext sc=getServletContext();
			sc.getRequestDispatcher("/ret1.jsp").forward(request, response);
		}
	}
	else
	{
		PreparedStatement m=conn.prepareStatement(query4);
		m.setString(1, s1);
		m.setString(2, s3);
		m.executeUpdate();
		ServletContext sc=getServletContext();
		sc.getRequestDispatcher("/ret1.jsp").forward(request, response);
	}
}
else
{
	PreparedStatement l=conn.prepareStatement(query4);
	l.setString(1, s1);
	l.setString(2, s3);
	l.executeUpdate();
	ServletContext sc=getServletContext();
	sc.getRequestDispatcher("/ret1.jsp").forward(request, response);
}
conn.close();

%>

</body>
</html>