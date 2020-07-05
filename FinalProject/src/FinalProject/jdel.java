package FinalProject;
import java.io.IOException;
import java.sql.*;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@SuppressWarnings("serial")
public class jdel extends HttpServlet{
	public void service(HttpServletRequest req, HttpServletResponse rep)
	{
		try
		{
			String s1=req.getParameter("a");
			String s2=req.getParameter("n");
			String url="jdbc:mysql://localhost:3306/df";
			String username="root";
			String password="";
			String query="delete from book where bid=? or name=?";
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn=DriverManager.getConnection(url, username, password);
			PreparedStatement s=conn.prepareStatement(query);
			s.setString(1, s1);
			s.setString(2, s2);
			@SuppressWarnings("unused")
			int a=s.executeUpdate();
			ServletContext sc=getServletContext();
			sc.getRequestDispatcher("/del.jsp").forward(req, rep);
			conn.close();
		}
		catch(SQLException|ClassNotFoundException | ServletException | IOException e)
		{
			e.printStackTrace();
		}
	}

}
