package unit10;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class SelectServlet
 */
@WebServlet("/SelectServlet")
public class SelectServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	String contentType = "text/html;charset=UTF-8";
	String goBack = "<br><a href='javascript:history.go(-1)'>다시</a>";
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SelectServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String job = request.getParameter("job");
		String[] interests = request.getParameterValues("interest");
		response.setContentType(contentType);
		PrintWriter out = response.getWriter();
		out.print("<html><body>");
		out.println("당신이 선택한 직업 : <b>" + job + "</b><hr>");
		out.println("당신이 선택한 분야 : <b>");
		if(interests == null) {
			out.print("선택한 항목이 없습니다.");
		} else {
			for(String interest: interests) {
				out.print(interest + " ");
			}
		}
		
		out.println("</b><br>" + goBack);
		out.print("</body></html>");
		
		out.close();
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
