package mypkg;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

@WebServlet("/uploadMulti.do")
public class UploadMultiServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	ServletContext context = null;
       
    public UploadMultiServlet() {
    }

	public void init(ServletConfig config) throws ServletException {
		this.context = config.getServletContext();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		String upload = "upload"; // WebContent 폴더 하위에 생성된 폴더 이름
		
		// 실제 이미지가 저장되는 경로
		String saveDirectory = this.context.getRealPath(upload);
		
		// 업로드 최대 사이즈
		int maxPostSize = 10 * 1024 * 1024;
		
		// 인코딩 문자열
		String encoding = "UTF-8";
		
		try {
			MultipartRequest mr 
			= new MultipartRequest(
					request, 
					saveDirectory,
					maxPostSize,
					encoding,
					new DefaultFileRenamePolicy()
					);
			
			request.setAttribute("mr", mr);
 					
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		String gotopage = "servlet/multiUploaded.jsp";
		RequestDispatcher dispatcher = request.getRequestDispatcher(gotopage);
		dispatcher.forward(request, response);
	}

}
