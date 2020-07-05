package FinalProject;
import java.io.IOException;
import java.sql.*;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@SuppressWarnings("serial")
public class Dbconn3 extends HttpServlet{
	public void service(HttpServletRequest req, HttpServletResponse rep)
	{
		try
		{
			String s1=req.getParameter("n");
			String s2=req.getParameter("p");
			String a="uname";
			HttpSession session=req.getSession();
			session.setAttribute(a, s1);
			String url="jdbc:mysql://localhost:3306/df";
			String username="root";
			String password="";
			String query="select * from user";
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn=DriverManager.getConnection(url, username, password);
			Statement s=conn.createStatement();
			ResultSet rs=s.executeQuery(query);
			while(rs.next())
			{
				 if(((rs.getString(1).equals(s1))||(rs.getString(2).equals(s1))))
				    {
				    	if(rs.getString(4).equals(s2))
				    	{
				    		ServletContext sc=getServletContext();
							sc.getRequestDispatcher("/menuus.jsp").forward(req, rep);
				    	}
				       else
				    	{
				    	ServletContext sc=getServletContext();
						sc.getRequestDispatcher("/regus1.jsp").forward(req, rep);
				    	}
				    }
			}
			conn.close();
		}
		catch(SQLException|ClassNotFoundException | IOException | ServletException e)
		{
			e.printStackTrace();
		}
	}
}
