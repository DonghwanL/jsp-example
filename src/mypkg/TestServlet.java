package mypkg;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class TestServlet extends HttpServlet {
	String id = null;
	String password = null;
	
	@Override
	public void init(ServletConfig config) throws ServletException {
		 this.id = config.getInitParameter("id");
		 this.password = config.getInitParameter("password");
	}
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		String sing = request.getParameter("sing");
		String singer = request.getParameter("singer");
		
		request.setAttribute("id", this.id);
		request.setAttribute("password", this.password);
		request.setAttribute("sing", sing);
		request.setAttribute("singer", singer);
		
		String gotopage = "/servlet/singProc.jsp";
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(gotopage);
		dispatcher.forward(request, response);
	}
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
	}
	
	@Override
	public void destroy() {
	}
}
