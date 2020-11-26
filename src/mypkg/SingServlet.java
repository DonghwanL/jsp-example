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

// Annotation
// @WebServlet("/hahaha")

@WebServlet(
		urlPatterns = { "/hahaha" }, 
		initParams = { 
				@WebInitParam(name = "company", value = "네이버"), 
				@WebInitParam(name = "address", value = "성남시 판교"),
				@WebInitParam(name = "hobby", value = "당구")
		})

public class SingServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	String company = null;
	String address = null;
	String hobby = null;
       
    public SingServlet() {
    }

	public void init(ServletConfig config) throws ServletException {
		this.company = config.getInitParameter("company");
		this.address = config.getInitParameter("address");
		this.hobby = config.getInitParameter("hobby");
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		String singer = request.getParameter("singer");
		String group = request.getParameter("group");
		
		request.setAttribute("singer", singer);
		request.setAttribute("group", group);
		request.setAttribute("company", company);
		request.setAttribute("address", address);
		request.setAttribute("hobby", hobby);
		
		String gotopage = "/servlet/singResult.jsp";
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(gotopage);
		dispatcher.forward(request, response);
		
	}

}
