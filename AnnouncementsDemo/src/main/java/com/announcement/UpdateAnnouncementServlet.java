package com.announcement;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/UpdateAnnouncementServlet")
public class UpdateAnnouncementServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            int id = Integer.parseInt(request.getParameter("id"));
            
            // Establish a database connection
            Connection conn = DriverManager.getConnection( "jdbc:mysql://localhost:3306/osms", "root", "12345");

            // Retrieve data from the database based on the ID
            String sql = "SELECT * FROM osms.announcements WHERE id = '"+id+"'";
            PreparedStatement pstmt = conn.prepareStatement(sql); // No need to set parameters

            ResultSet rs = pstmt.executeQuery();

            

            List<Announcement> annDetails = new ArrayList<>();

            if (rs.next()) {
            	int Id = rs.getInt(1);
    			String title = rs.getString(2);
    			String description = rs.getString(3);
    			String postedDate = rs.getString(4);
    			String editorname = rs.getString(5);
    			String status = rs.getString(6);
                
    			Announcement a = new Announcement(id , title, description, postedDate, editorname, status);
    			annDetails.add(a);
            }

            // Set the list as an attribute
            request.setAttribute("annDetails", annDetails);

            // Forward the request to the JSP
            request.getRequestDispatcher("updateAnnouncement.jsp").forward(request, response);

            conn.close();
         
    	} catch (SQLException e) {
    		e.printStackTrace();
    		response.getWriter().write("SQL Error: " + e.getMessage());
    	} catch (IOException e) {
    		e.printStackTrace();
    		response.getWriter().write("IO Error: " + e.getMessage());
    }
    }
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
    	int id =Integer.parseInt(request.getParameter("id"));
		String title =request.getParameter("title");
		String description =request.getParameter("description");
		String editorname =request.getParameter("editorname");
		String status =request.getParameter("status");
		
		boolean isTrue;
		
		isTrue = AnnouncementDBUtil.updateAnnouncement( id, title, description, editorname, status);
		if(isTrue == true) {
			RequestDispatcher dis = request.getRequestDispatcher("/announcementDisplayServlet");
			dis.forward(request, response);
		    
			
		}else {
			RequestDispatcher dis2 = request.getRequestDispatcher("Unsucces.jsp");
			dis2.forward(request, response);

	}
    }
    
}