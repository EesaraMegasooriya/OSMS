package com.salary;



import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/CustomerInsert")
public class InsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String name = request.getParameter("name");
		String nic = request.getParameter("nic");
		String salary = request.getParameter("salary");
		String increment = request.getParameter("increment");
		String decrement = request.getParameter("decrement");
		String total = request.getParameter("total");
		
		boolean isTrue;
		
		isTrue = UserDBUtil.insertcustomer(0, name, nic, salary, increment, decrement, total);
		
		if(isTrue == true) {
			String alertMessage = "Salary added Succfull";
		    response.getWriter().println("<script>alert('" + alertMessage + "'); window.location.href='Search.jsp';</script>");
		} else {
			RequestDispatcher dis2 = request.getRequestDispatcher("unsuccess.jsp");
			dis2.forward(request, response);
		}
		
		
	}

}
