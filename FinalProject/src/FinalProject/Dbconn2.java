package FinalProject;
import java.io.IOException;
import java.sql.*;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@SuppressWarnings("serial")
public class Dbconn2 extends HttpServlet{
	public void service(HttpServletRequest req, HttpServletResponse rep)
	{
		try
		{
			String s5=req.getParameter("g");
			String s1=req.getParameter("a");
			String s2=req.getParameter("n");
			String s3=req.getParameter("phone");
			String s4=req.getParameter("p");
			String url="jdbc:mysql://localhost:3306/df";
			String username="root";
			String password="";
			String query="insert into user (uid,name,phone,password)"+"values(?,?,?,?)";
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn=DriverManager.getConnection(url, username, password);
			if(s5.equals(s4))
			{
			PreparedStatement s=conn.prepareStatement(query);
			s.setString(1, s1);
			s.setString(2, s2);
			s.setString(3, s3);
			s.setString(4, s4);
			@SuppressWarnings("unused")
			int a=s.executeUpdate();
			ServletContext sc=getServletContext();
			sc.getRequestDispatcher("/firstus.html").forward(req, rep);
			}
			else
			{
				ServletContext sc=getServletContext();
				sc.getRequestDispatcher("/regus1.html").forward(req, rep);
			}
			conn.close();
		}
		catch (SQLException|ClassNotFoundException | ServletException | IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
