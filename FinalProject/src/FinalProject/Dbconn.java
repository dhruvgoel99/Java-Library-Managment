package FinalProject;
import java.io.IOException;
import java.sql.*;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@SuppressWarnings("serial")
public class Dbconn extends HttpServlet{
	public void service(HttpServletRequest req, HttpServletResponse rep)
	{
		try
		{
			String s1=req.getParameter("ad");
			String s2=req.getParameter("nd");
			String s3=req.getParameter("phoned");
			String s4=req.getParameter("pd");
			String url="jdbc:mysql://localhost:3306/df";
			String username="root";
			String password="";
			String query="insert into admin (aid,name,phone,password)"+"values(?,?,?,?)";
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn=DriverManager.getConnection(url, username, password);
			PreparedStatement s=conn.prepareStatement(query);
			s.setString(1, s1);//we can also use integer,float,... anything
			s.setString(2, s2);
			s.setString(3, s3);
			s.setString(4, s4);
			s.executeUpdate();
			
			ServletContext sc=getServletContext();
			sc.getRequestDispatcher("/firstad.html").forward(req, rep);
			conn.close();
		}
		catch (SQLException|ClassNotFoundException | ServletException | IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
