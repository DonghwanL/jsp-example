package mypkg;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class FormServlet extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		String gender = request.getParameter("gender");
		String menu = request.getParameter("menu");
	
		
		request.setAttribute("gender", gender);
		request.setAttribute("menu", menu);
		
		String gotopage = "/servlet/destination.jsp";
		
		// 페이지 이동
		// 리다이렉션 방식
		// response.sendRedirect(gotopage);
		
		// 포워딩 방식
		RequestDispatcher dispatcher = request.getRequestDispatcher(gotopage);
		dispatcher.forward(request, response);
		// dispatcher.include(request, response);
	}
}
