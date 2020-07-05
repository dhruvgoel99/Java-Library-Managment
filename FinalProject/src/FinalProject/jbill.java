/*package FinalProject;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@SuppressWarnings("serial")
public class jbill extends HttpServlet{
	public void service(HttpServletRequest req, HttpServletResponse rep)
	{
		try
		{
			PrintWriter w=rep.getWriter();
			String s2=req.getParameter("u");
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
				String user=rs.getString(8);
				w.println("The total bill you want to pay is:"+user);
			}
			conn.close();
		}
		catch(SQLException|ClassNotFoundException | IOException e)
		{
			e.printStackTrace();
		}
	}

}*/