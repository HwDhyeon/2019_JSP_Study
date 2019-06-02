package plana;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import db.Oracle.DBConnect;

import java.sql.*;

@WebServlet("/SigninGo")
public class SigninGo extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public SigninGo() {
        super();
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Connection conn = null;
		PreparedStatement pst = null;
		ResultSet rs = null;
		String query = "select * from PlanA where id = ? and pw = ?";
		
		HttpSession session = request.getSession();
		
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		try {
			conn = DBConnect.getConnection();
			pst = conn.prepareStatement(query);
			
			pst.setString(1, id);
			pst.setString(2, pw);
			
			rs = pst.executeQuery();
			
			if(rs.next()) {
				String usr = rs.getString("usrchk");
				String phone = rs.getString("phone");
				
				session.setAttribute("id", id);
				session.setAttribute("usrchk", usr);
				session.setAttribute("phone", phone);
				
				response.sendRedirect("chkmain.jsp");
			} else {
				response.sendRedirect("welcome.jsp");
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if(rs != null) { rs.close(); }
				if(pst != null) { pst.close(); }
				if(conn != null) { conn.close(); }
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
	}

}
