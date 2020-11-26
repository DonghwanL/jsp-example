package mypkg;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebInitParam;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(
		urlPatterns = { "/gagaga" }, 
		initParams = { 
				@WebInitParam(name = "phone", value = "0212345678"), 
				@WebInitParam(name = "address", value = "서울시 서대문구")
		})

public class FromServlet2 extends HttpServlet {
	String phone = null;
	String address = null;
	private static final long serialVersionUID = 1L;

    public FromServlet2() {
    }

	public void init(ServletConfig config) throws ServletException {
		this.phone = config.getInitParameter("phone");
		this.address = config.getInitParameter("address");
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		String id = request.getParameter("id");
		String password = request.getParameter("password");
		String nickname = request.getParameter("nickname");
		
		HttpSession session = request.getSession();
		
		session.setAttribute("id", id);
		session.setAttribute("password", password);
		session.setAttribute("nickname", nickname);
		session.setAttribute("address", address);
		session.setAttribute("phone", phone);
		
		String gotopage = "/servlet/servletTo2.jsp";
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(gotopage);
		dispatcher.forward(request, response); 
	}

}
