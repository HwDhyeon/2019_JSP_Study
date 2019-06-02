package Userinfo;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.sql.*;


@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public Login() {
        super();
        // TODO Auto-generated constructor stub
    }
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		String id = request.getParameter("userid");
		String pw = request.getParameter("userpw");
		
		String query = "select * from userinfo where userid = ? and userpw = ?";
		
		Connection conn = null;
		PreparedStatement pst = null;
		ResultSet rs = null;
		HttpSession session = request.getSession();
		String driver = "oracle.jdbc.driver.OracleDriver";
		String url = "jdbc:oracle:thin:@localhost:1521:XE";
		String DatabaseId = "scott", DatabasePw = "tiger";
		
		try {
			Class.forName(driver);
			conn = DriverManager.getConnection(url, DatabaseId, DatabasePw);
			pst = conn.prepareStatement(query);
			pst.setString(1, id);
			pst.setString(2, pw);
			
			rs = pst.executeQuery();
			
			if(rs.next()) {
				String name = rs.getString("username");
				String adminvalue = rs.getString("adminvalue");
				String position = rs.getString("positionname");
				String gender = rs.getString("gender");
				String department = rs.getString("department");
				
				session.setAttribute("id", id);
				session.setAttribute("name", name);
				session.setAttribute("gender", gender);
				session.setAttribute("department", department);
				session.setAttribute("position", position);
				
				if(adminvalue.equals("1") == true) {
					response.sendRedirect("adminrobby.jsp");
				} else {
					response.sendRedirect("robby.jsp");
				}
			} else {
				response.sendRedirect("main.jsp");
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if(rs != null) rs.close();
				if(pst != null) pst.close();
				if(conn != null) conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
	}

}
