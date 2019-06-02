package Userinfo;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class SignUp
 */
@WebServlet("/SignUp")
public class SignUp extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SignUp() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setCharacterEncoding("UTF-8");
		request.setCharacterEncoding("UTF-8");
		Connection conn = null;
		PreparedStatement preparedStatement = null;
		String driver = "oracle.jdbc.driver.OracleDriver";
		String url = "jdbc:oracle:thin:@localhost:1521:XE";
		String DatabaseId = "scott", DatabasePw = "tiger";
		String query = "insert into userinfo(userid, userpw, adminvalue, username, positionname, pay, department, gender, joindate) values(?, ?, 0, ?, ?, 0, ?, ?, ?)";
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("main.jsp");
		String userid = request.getParameter("userid");
		String userpw = request.getParameter("userpw");
		String username = request.getParameter("username");
		String positionname = request.getParameter("positionname");
		String department = request.getParameter("Department");
		String gender = request.getParameter("gender");
		String joindate = request.getParameter("joindate");
		
		try {
			Class.forName(driver);
			conn = DriverManager.getConnection(url, DatabaseId, DatabasePw);
			preparedStatement = conn.prepareStatement(query);
			preparedStatement.setString(1, userid);
			preparedStatement.setString(2, userpw);
			preparedStatement.setString(3, username);
			preparedStatement.setString(4, positionname);
			preparedStatement.setString(5, department);
			preparedStatement.setString(6, gender);
			preparedStatement.setString(7, joindate);
			
			preparedStatement.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try { if (preparedStatement != null) preparedStatement.close(); if (conn != null) conn.close(); } catch (Exception e) { System.out.println(e); }
		}
		
		dispatcher.forward(request, response);
	}

}
