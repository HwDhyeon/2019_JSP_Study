<%@page import="webStudy.PhoneNumberFormat"%>
<%@page import="java.util.regex.Pattern"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%!
	Connection connection = null;
	Statement statement = null;
	ResultSet resultSet = null;
	String driver = "oracle.jdbc.driver.OracleDriver";
	String url = "jdbc:oracle:thin:@localhost:1521:XE";
	String userId = "scott";
	String userPw = "tiger";
	String sql = "select * from member order by name asc";
%>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>01_allMember</title>
	</head>
	<body>
		<table width="800" border="1">
			<tr>
				<th>이름</th>
				<th>아이디</th>
				<th>암호</th>
				<th>이메일</th>
				<th>전화번호</th>
				<th>권한(1:관리자, 0:일반회원)</th>
			</tr>
			<%
				try {
					Class.forName(driver);
					connection = DriverManager.getConnection(url, userId, userPw);
					statement = connection.createStatement();
					resultSet = statement.executeQuery(sql);
					
					
					while(resultSet.next()) {
						out.println("<tr>");
						out.println("<td>" + resultSet.getString("name") + "</td>");
						out.println("<td>" + resultSet.getString("userid") + "</td>");
						out.println("<td>" + resultSet.getString("pwd") + "</td>");
						out.println("<td>" + resultSet.getString("email") + "</td>");
						out.println("<td>" + resultSet.getString("phone") + "</td>");
						out.println("<td>" + resultSet.getString("admin") + "</td>");
						out.println("</tr>");
					}
				}
				catch (Exception e) {
					e.printStackTrace();
				}
				finally {
					try {
						if(resultSet != null) { resultSet.close(); }
						if(statement != null) { statement.close(); }
						if(connection != null) { connection.close(); }
					}
					catch (Exception e) {
						e.printStackTrace();
					}
				}
			%>
		</table>
	</body>
</html>