package FinalProject;
import java.io.IOException;
import java.sql.*;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@SuppressWarnings("serial")
public class jadd extends HttpServlet{
	public void service(HttpServletRequest req, HttpServletResponse rep)
	{
		try
		{
			String s1=req.getParameter("a");
			String s2=req.getParameter("n");
			String s3=req.getParameter("g");
			String s4=req.getParameter("au");
			String s5=req.getParameter("p");
			String s6=req.getParameter("r");
			String url="jdbc:mysql://localhost:3306/df";
			String username="root";
			String password="";
			String query="insert into book (bid,name,edition,aname,pname,irate)"+"values(?,?,?,?,?,?)";
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn=DriverManager.getConnection(url, username, password);
			PreparedStatement s=conn.prepareStatement(query);
			s.setString(1, s1);
			s.setString(2, s2);
			s.setString(3, s3);
			s.setString(4, s4);
			s.setString(5, s5);
			s.setString(6, s6);
			@SuppressWarnings("unused")
			int a=s.executeUpdate();
			ServletContext sc=getServletContext();
			sc.getRequestDispatcher("/add.jsp").forward(req, rep);
			conn.close();
		}
		catch(SQLException|ClassNotFoundException | ServletException | IOException e)
		{
			e.printStackTrace();
		}
	}

}
