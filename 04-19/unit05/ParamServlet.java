package unit05;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ParamServlet")
public class ParamServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public ParamServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=EUC-KR");
		String id = request.getParameter("id");
		int age = Integer.parseInt(request.getParameter("age"));
		PrintWriter out = response.getWriter();
		out.print("<html>\n\t<body>");
		out.println("\n\t\t����� �Է��� �����Դϴ�.<br>");
		out.println("�� �� �� : ");
		out.println(id);
		out.println("<br> ���� : ");
		out.println(age);
		
		out.println("<br><a href='javascript:history.go(-1)>�ٽ�</a>'");
		out.print("</body></html>");
		
		out.close();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
