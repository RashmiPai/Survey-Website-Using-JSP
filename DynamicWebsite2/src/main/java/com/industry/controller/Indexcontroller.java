package com.industry.controller;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

//@WebServlet("/Indexcontroller")
public class Indexcontroller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		String user= request.getParameter("uid");
		String passw = request.getParameter("pass");
		
		if(LoginDao.validate(user, passw))
		{	
			
			RequestDispatcher rd= request.getRequestDispatcher("successful.jsp");
			rd.forward(request, response);
			
			
		}
		else
		{	

			out.println("<script type=\"text/javascript\">");  
			out.println("alert('Sorry, Password and Username Error');");  
			out.println("</script>");
			
			RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
			rd.include(request, response);
		}
		
		out.close();
		
		
	
	}

}
