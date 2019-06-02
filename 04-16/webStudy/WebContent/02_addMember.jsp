<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%!
	Connection connection = null;
	PreparedStatement preparedStatement = null;
	String driver = "oracle.jdbc.driver.OracleDriver";
	String url = "jdbc:oracle:thin:@localhost:1521:XE";
	String userId = "scott";
	String userPw = "tiger";
	String sql = "insert into member values(?, ?, ?, ?, ?, ?)";
%>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>addMember</title>
	</head>
	<body>
		<%
			request.setCharacterEncoding("utf-8");
			String name = request.getParameter("name");
			String userid = request.getParameter("userid");
			String pwd = request.getParameter("pwd");
			String email = request.getParameter("email");
			String phone = request.getParameter("phone");
			String admin = request.getParameter("admin");
			
			try {
				Class.forName(driver);
				connection = DriverManager.getConnection(url, userId, userPw);
				preparedStatement = connection.prepareStatement(sql);
				preparedStatement.setString(1, name);
				preparedStatement.setString(2, userid);
				preparedStatement.setString(3, pwd);
				preparedStatement.setString(4, email);
				preparedStatement.setString(5, phone);
				preparedStatement.setInt(6, Integer.parseInt(admin));
				
				preparedStatement.executeUpdate();
			}
			catch (Exception e) {
				e.printStackTrace();
			}
			finally {
				try {
					if(preparedStatement != null) { preparedStatement.close(); }
					if(connection != null) { connection.close(); }
				}
				catch (Exception e) {
					e.printStackTrace();
				}
			}
		%>
		<h3>회원 가입 성공</h3>
		<a href="01_allMember.jsp">회원 전체 목록 보기</a>
	</body>
</html>