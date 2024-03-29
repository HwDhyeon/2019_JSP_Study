package unit02;

import java.io.IOException;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/LifeCycle")
public class LifeCycle extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	int initCount = 1, doGetCount = 1, destroyCount = 1;
	
    public LifeCycle() {
        super();
    }
    
    @Override
    public void init(ServletConfig config) throws ServletException {
    	System.out.println("init 메소드는 첫 요청만 호출됨 : " + initCount++);
    }
  
    @Override
    public void destroy() {
    	System.out.println("destroy 메소드는 톰캣이 종료될 때만 호출됨 : " + destroyCount++);
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doGet 메소드가 요청될때마다 호출됨 : " + doGetCount++);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
