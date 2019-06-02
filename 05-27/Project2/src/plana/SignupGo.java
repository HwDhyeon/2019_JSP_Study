package plana;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sun.scenario.effect.impl.prism.PrImage;

import db.Oracle.DBConnect;
import jdk.nashorn.internal.ir.WithNode;

@WebServlet("/SignupGo")
public class SignupGo extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public SignupGo() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		Connection conn = null;
		PreparedStatement pst = null;
		String query = "insert into PlanA(id, pw, phone, usrchk) vlaues(?, ?, ?, ?)";
		boolean isSuccess = true;
		
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String phone = request.getParameter("phone");
		String check = request.getParameter("check");
		
		try {
			conn = DBConnect.getConnection();
			pst = conn.prepareStatement(query);
			
			pst.setString(1, id);
			pst.setString(2, pw);
			pst.setString(3, phone);
			pst.setString(4, check);
			
			pst.execute();
		} catch (Exception e) {
			e.printStackTrace();
			isSuccess = false;
		} finally {
			try {
				if(pst != null) { pst.close(); }
				if(conn != null) { conn.close(); }
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		
		if(isSuccess) {
			response.sendRedirect("welcome.jsp");
		}
	}

}
