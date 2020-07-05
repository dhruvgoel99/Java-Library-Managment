package FinalProject;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;

import javax.servlet.ServletException;
import javax.servlet.http.*;

@SuppressWarnings("serial")
public class logout extends HttpServlet{
	 public void service(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException{
		 response.setContentType("text/html");  
		 PrintWriter out=response.getWriter();
		 request.getRequestDispatcher("/firstus.html").include(request, response);
		 HttpSession session=request.getSession();
		 session.invalidate();
		 out.print("You are successfully logged out!");
		 out.close();
		 }
	 }
