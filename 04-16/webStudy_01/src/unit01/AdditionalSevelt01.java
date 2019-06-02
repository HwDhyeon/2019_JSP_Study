package unit01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/AdditionalSevelt01")
public class AdditionalSevelt01 extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public AdditionalSevelt01() {
        super();
    }
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		int num1 = 20, num2 = 10, add = num1 + num2;
		PrintWriter output = response.getWriter();
		output.printf("<html>\n\t<head>\n\t\t<title>Addition</title>\n\t</head>\n");
		output.printf("\t<body>\n");
		output.printf("\t\t%d + %d = %d\n", num1, num2, add);
		output.printf("\t</body>\n");
		output.printf("</html>");
		
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
