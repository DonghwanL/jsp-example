package mypkg;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class CallerServlet extends HttpServlet {
	String company = null;
	int kor = 0, math = 0, eng = 0;
	
	@Override
	public void init(ServletConfig config) throws ServletException {
		System.out.println("init");
		this.company = config.getInitParameter("company");
		this.kor = Integer.parseInt(config.getInitParameter("kor"));
		this.eng = Integer.parseInt(config.getInitParameter("eng"));
		this.math = Integer.parseInt(config.getInitParameter("math"));
		
		System.out.println(kor + " / " + eng + " / " + math);
	}
	
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		System.out.println("service");
		String method = request.getMethod();
		
		if(method.equalsIgnoreCase("get")) {
			this.doGet(request, response);
		} else {
			this.doPost(request, response);
		}
	}
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		System.out.println("dopost");
		
		int total = this.kor + this.eng + this.math;
		
		String singer = "";
		
		int _singer = Integer.parseInt(request.getParameter("singer"));
		
		if (_singer == 1) {
			singer = "이문세";
		} else if (_singer == 2) {
			singer = "에이핑크";
		} else if (_singer == 3) {
			singer = "여자친구";
		} else {
			singer = "소방차";
		}
		
		request.setAttribute("company", this.company);
		request.setAttribute("kor", this.kor);
		request.setAttribute("eng", this.eng);
		request.setAttribute("math", this.math);
		request.setAttribute("total", total);
		request.setAttribute("singer", singer);
		
		String gotopage = "/servlet/Callee.jsp";
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(gotopage);
		dispatcher.forward(request, response);
		
	}
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		System.out.println("doget");
	}
	
	@Override
	public void destroy() {
		System.out.println("destroy");
	}
}
