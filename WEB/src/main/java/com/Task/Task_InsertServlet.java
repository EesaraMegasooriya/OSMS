package com.Task;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//encapsulation
//getters


@WebServlet("/Task_InsertServlet")
//inheritance
public class Task_InsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String title = request.getParameter("title");
		String description = request.getParameter("description");
		String ddate = request.getParameter("ddate");
		
		boolean isTrue;
		
		isTrue = TaskDBUtil.insertTask(title,description,ddate);
		
		if(isTrue == true) {
			String alertMessage = "Submit Successful";
		    response.getWriter().println("<script>alert('" + alertMessage + "'); window.location.href='Task_Search.jsp';</script>");
			
			//RequestDispatcher dis = request.getRequestDispatcher("Task_Search.jsp");
			//dis.forward(request, response);
		} else {
			RequestDispatcher dis2 = request.getRequestDispatcher("unsuccess.jsp");
			dis2.forward(request, response);
		}
		
		
	}

}
