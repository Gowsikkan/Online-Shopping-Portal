package com.login;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Signin
 */
@WebServlet("/Signin")
public class Signin extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String name = request.getParameter("sign_username");
		String email = request.getParameter("sign_email");
		String pass = request.getParameter("sign_pass");
		String phn = request.getParameter("sign_phone");
		
		if(name == null)
		{
			response.sendRedirect("Signin.jsp");
		}
		else{
		
		SigninDao dao = new SigninDao(); 
try {
			
			if(dao.save(name,pass,email,phn)>0)
			{
				HttpSession session= request.getSession();
				session.setAttribute("username", name);
				response.sendRedirect("welcome.jsp");
			}
			else
			{
				response.sendRedirect("Signin.jsp");
			}
	}catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
	

		
}
		
		
	

	


