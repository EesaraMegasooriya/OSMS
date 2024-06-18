package com.Task;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;




@WebServlet("/Task_UpdateServlet")
public class Task_UpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("id");
		String title = request.getParameter("title");
		String description = request.getParameter("description");
		String ddate= request.getParameter("ddate");
		
		boolean isTrue;
		
		isTrue = TaskDBUtil.updatetask(id, title, description, ddate);
		
		if(isTrue == true) {
			
			List<Task> cusDetails = TaskDBUtil.getTaskDetails(id);
			request.setAttribute("cusDetails", cusDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("Task_Display.jsp");
			dis.forward(request, response);
		}
		else {
			List<Task> cusDetails = TaskDBUtil.getTaskDetails(id);
			request.setAttribute("cusDetails", cusDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("Task_Display.jsp");
			dis.forward(request, response);
		}
	}


}
