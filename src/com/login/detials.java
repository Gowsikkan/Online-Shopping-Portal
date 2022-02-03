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
@WebServlet("/detials")
public class detials extends HttpServlet {
	
protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String uname = request.getParameter("username");
		String product = request.getParameter("id");
		String quantity = request.getParameter("Quantity");
		String phone = request.getParameter("phone");
		String delivery = request.getParameter("Address");
		
		detialsDao dao = new detialsDao();
		try {
					
					if(dao.saves(uname,product,quantity,phone,delivery)>0)
					{
						response.sendRedirect("confirmation.jsp");
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
			

				
		