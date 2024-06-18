package com.adminlog;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/AdminLoginServlet")
public class AdminLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		
try {
			
			Class.forName("com.mysql.jdbc.Driver");
			
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/osms","root","12345");
			
			String name = request.getParameter("uid");
			String password = request.getParameter("pass");
			
			PreparedStatement pst = con.prepareStatement("Select * From admin_users WHERE username = ? AND password = ?");
			
			pst.setString(1, name);
			pst.setString(2, password);
			
			ResultSet rs = pst.executeQuery();
			
			if(rs.next())
			{
				response.sendRedirect("http://localhost:8090/AdminDemo/AdminPanelHome.jsp");
			}
			else
			{
				String alertMessage = "Incorrect Username & Password. Try Again!";
				response.getWriter().println("<script>alert('" + alertMessage + "');window.location.href='AdminLoginPage.jsp';</script>");
			}
			
			
		}
		catch(Exception e){
			System.out.println(e);
		}
	}

}
