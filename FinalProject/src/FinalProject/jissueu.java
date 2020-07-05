package FinalProject;
import java.io.IOException;
import java.sql.*;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@SuppressWarnings("serial")
public class jissueu extends HttpServlet{
	public void service(HttpServletRequest req, HttpServletResponse rep)
	{
		try
		{
			String s1=req.getParameter("a");
			@SuppressWarnings("unused")
			String s2=req.getParameter("n");
			String s3=req.getParameter("u");
			String url="jdbc:mysql://localhost:3306/df";
			String username="root";
			String password="";
			String query="update user set bida=? where bida is null and uid=?";
			String query1="update user set bidau=? where bidau is null and uid=?";
			String query2="update user set bidu=? where bidu is null and uid=?";
			String query3="update user set bill=0 where uid=?";
			String query4="update user set bill=bill+(select irate from book where book.bid=? and user.uid=?)";
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn=DriverManager.getConnection(url, username, password);
			PreparedStatement s=conn.prepareStatement(query);
			s.setString(1, s1);
			s.setString(2, s3);
			int a=s.executeUpdate();
			PreparedStatement d=conn.prepareStatement(query3);
			d.setString(1, s1);
			d.setString(2, s3);
			d.executeUpdate();
			if(a==0)
			{
				PreparedStatement sd=conn.prepareStatement(query1);
				sd.setString(1, s1);
				sd.setString(2, s3);
				int af=sd.executeUpdate();
				if(af==0)
				{
					PreparedStatement se=conn.prepareStatement(query2);
					se.setString(1, s1);
					se.setString(2, s3);
					int ag=se.executeUpdate();
					if(ag==0)
					{
						ServletContext sc=getServletContext();
						sc.getRequestDispatcher("/f.jsp").forward(req, rep);
					}
					else
					{
						PreparedStatement j=conn.prepareStatement(query4);
						j.setString(1, s1);
						j.setString(2, s3);
						j.executeUpdate();
						ServletContext sc=getServletContext();
						sc.getRequestDispatcher("/issue3.jsp").forward(req, rep);
					}
				}
				else
				{
					PreparedStatement m=conn.prepareStatement(query4);
					m.setString(1, s1);
					m.setString(2, s3);
					m.executeUpdate();
					ServletContext sc=getServletContext();
					sc.getRequestDispatcher("/issue2.jsp").forward(req, rep);
				}
			}
			else
			{
				PreparedStatement l=conn.prepareStatement(query4);
				l.setString(1, s1);
				l.setString(2, s3);
				l.executeUpdate();
				ServletContext sc=getServletContext();
				sc.getRequestDispatcher("/issue2.jsp").forward(req, rep);
			}
			conn.close();
		}
		catch(SQLException|ClassNotFoundException | ServletException | IOException e)
		{
			e.printStackTrace();
		}
	}

}
