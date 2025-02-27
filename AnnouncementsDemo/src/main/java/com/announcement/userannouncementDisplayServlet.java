package com.announcement;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/userannouncementDisplayServlet")
public class userannouncementDisplayServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
			List<Announcement>announcementDetails = AnnouncementDBUtil.display();
			
			request.setAttribute("announcementDetails",announcementDetails);
		}
		catch(Exception e){
			e.printStackTrace();
		}
		
		RequestDispatcher dis = request.getRequestDispatcher("userAnnouncement.jsp");
		dis.forward(request, response);
	}

}
