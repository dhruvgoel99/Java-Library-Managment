/*package FinalProject;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@SuppressWarnings("serial")
public class jlist extends HttpServlet{
	public void service(HttpServletRequest req, HttpServletResponse rep)
	{
		try
		{
			PrintWriter w=rep.getWriter();
			HttpSession session=req.getSession();
			String s2=(String)session.getAttribute("uname");
			String url="jdbc:mysql://localhost:3306/df";
			String username="root";
			String password="";
			String query="select * from user,book where user.uid=? and (user.bida=book.bid or user.bidu=book.bid or user.bidau=book.bid)";
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn=DriverManager.getConnection(url, username, password);
			PreparedStatement s=conn.prepareStatement(query);
			s.setString(1, s2);
			ResultSet rs=s.executeQuery();
			while(rs.next())
			{
				String user=rs.getString(1)+":"+rs.getString(2)+":"+rs.getString(9)+":"+rs.getString(10)+":"+rs.getString(11)+":"+rs.getString(12)+":"+rs.getString(13)+":"+rs.getString(14);
				w.println(user);
			}
			conn.close();
		}
		catch(SQLException|ClassNotFoundException | IOException e)
		{
			e.printStackTrace();
		}
	}

}*/
