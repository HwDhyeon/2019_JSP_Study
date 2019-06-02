<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<link rel="stylesheet" type="text/css" href="./StyleFolder/Styles.css">
		<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css" integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay" crossorigin="anonymous">
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>View Post</title>
	</head>
	<body class="align">
	<%
			String sessionName = session.getAttribute("name").toString();
			String sessionDept = session.getAttribute("department").toString();
			String sessionPos = session.getAttribute("position").toString();
			String sessionGender = session.getAttribute("gender").toString();
		%>
		<div style="position: fixed; top: 20px; left: 20px;">
			<h4><span style="color:white"><%= sessionName %>님 접속중<br><%= sessionDept %> <%= sessionPos %>(<%= sessionGender %>)</span></h4>
		</div>
		<table>
			<tr>
				<td>번호</td>
				<td>제목</td>
				<td>내용</td>
				<td>작성자</td>
				<td>작성날짜</td>
			</tr>
		<%
			Connection conn = null;
			PreparedStatement pst = null;
			ResultSet rs = null;
			String driver = "oracle.jdbc.driver.OracleDriver";
			String url = "jdbc:oracle:thin:@localhost:1521:XE";
			String DatabaseId = "scott", DatabasePw = "tiger";
			String query = "select * from community where subject = ?";
			
			try {
				Class.forName(driver);
				conn = DriverManager.getConnection(url, DatabaseId, DatabasePw);
				pst = conn.prepareStatement(query);
				
				pst.setString(1, request.getParameter("q"));
				rs = pst.executeQuery();
				
				while(rs.next()) {
					String idx = rs.getString("postnumber");
					String subject = rs.getString("subject");
					String writer = rs.getString("writer");
					String date = rs.getString("writedate");
					String content = rs.getString("content");
					
					out.println("<tr>");
					out.println("<td>" + idx + "</td>");
					out.println("<td>" + subject + "</td>");
					out.println("<td>" + content + "</td>");
					out.println("<td>" + writer + "</td>");
					out.println("<td>" + date.substring(0, date.length() - 9) + "</td>");
					out.println("</tr>");
				}
				
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				try {
					if(conn != null) conn.close();
					if(pst != null) pst.close();
					if(rs != null) rs.close();
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		%>
		<tr>
			<td colspan="8">
				<form action="robby.jsp" method="post" class="form form--login">
					<div class="form__field">
			          <input type="submit" value="Back to" style="width: 100px; margin: 0 auto; margin-top: 30px;">
			        </div>
				</form>
			</td>
		</tr>
		</table>
	</body>
</html>