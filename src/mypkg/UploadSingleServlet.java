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

@WebServlet("/uploadSingle.do")
public class UploadSingleServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	ServletContext context = null;
       
    public UploadSingleServlet() {
    }


	public void init(ServletConfig config) throws ServletException {
		System.out.println("업로드 필요");
		this.context = config.getServletContext();
	}


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		String savedPath = "upload";
		String realpath = this.context.getRealPath(savedPath);
		
		System.out.println("savedPath : " + savedPath);
		System.out.println("saveDirectory : " + realpath);
		
		int maxPostSize = 10 * 1024 * 1024;
		String encoding = "UTF-8";
		
		try {
			MultipartRequest mr 
			= new MultipartRequest(
					request,
					realpath,
					maxPostSize,
					encoding,
					new DefaultFileRenamePolicy()					
					);
			
			request.setAttribute("name", mr.getParameter("name"));
			request.setAttribute("title", mr.getParameter("title"));
			request.setAttribute("realpath", realpath);
			
			String uploadFile = mr.getFilesystemName("uploadFile");
			request.setAttribute("uploadFile", uploadFile);
			
			String gotopage = "servlet/singleUploaded.jsp";
			RequestDispatcher dispatcher = request.getRequestDispatcher(gotopage);
			dispatcher.forward(request, response);
			
		} catch (Exception e) {
			e.printStackTrace();
		}

		
	}

}
