package com.announcement;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/announcementinsertservlet")
public class announcementinsertservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String title = request.getParameter("title");
		String description = request.getParameter("description");
		String editorname = request.getParameter("editorname");
		String status = request.getParameter("status");
		
		boolean isTrue;
		
		isTrue = AnnouncementDBUtil.insertannouncement(title, description, editorname, status);
		
		if(isTrue == true) {
			RequestDispatcher dis = request.getRequestDispatcher("/announcementDisplayServlet");
			dis.forward(request,response);
		} else {
			RequestDispatcher dis2 = request.getRequestDispatcher("unsuccess.jsp");
			dis2.forward(request, response);
		}
		
	}

}
