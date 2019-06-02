<%@page import="java.util.ArrayList"%>
<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<link rel="stylesheet" type="text/css" href="./StyleFolder/Styles.css">
		<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css" integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay" crossorigin="anonymous">
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>ManagementPage</title>
	</head>
	<body class="align">
	
		<%
			String sessionName = session.getAttribute("name").toString();
			String sessionDept = session.getAttribute("department").toString();
			String sessionPos = session.getAttribute("position").toString();
			String sessionGender = session.getAttribute("gender").toString();
		%>
		<div style="position: fixed; top: 20px; left: 20px;">
			<h4><span style="color:white"><%= sessionName %>님 접속중<br><%= sessionDept %> <%= sessionPos %>(<%= sessionGender %>)</h4></span>
		</div>
		<table>
			<tr>
				<td>이름</td>
				<td>이메일</td>
				<td>직급</td>
				<td>부서</td>
				<td>봉급</td>
				<td>성별</td>
				<td>입사일</td>
				<td>수정</td>
				<td>해고</td>
			</tr>
		<%
			Connection conn = null;
			PreparedStatement pst = null;
			ResultSet rs = null;
			String driver = "oracle.jdbc.driver.OracleDriver";
			String url = "jdbc:oracle:thin:@localhost:1521:XE";
			String DatabaseId = "scott", DatabasePw = "tiger";
			String query = "select * from userinfo";
			
			try {
				Class.forName(driver);
				conn = DriverManager.getConnection(url, DatabaseId, DatabasePw);
				pst = conn.prepareStatement(query);
				rs = pst.executeQuery();
				
				while(rs.next()) {
					String id = rs.getString("userid");
					String name = rs.getString("username");
					String position = rs.getString("positionname");
					String pay = rs.getString("pay");
					String department = rs.getString("department");
					String gender = rs.getString("gender");
					String joindate = rs.getString("joindate");
					
					out.println("<tr>");
					out.println("<td>" + name + "</td>");
					out.println("<td>" + id + "</td>");
					out.println("<td>" + position + "</td>");
					out.println("<td>" + department + "</td>");
					out.println("<td>" + pay + "</td>");
					out.println("<td>" + gender + "</td>");
					out.println("<td>" + joindate.substring(0, joindate.length() - 9) + "</td>");
					out.println("<td> <a href='deleteuser.jsp?q=" + name + "'><i class='fas fa-user-slash'></i></a> </td>");
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
				<form action="main.jsp" method="post" class="form form--login">
					<div class="form__field">
			          <input type="submit" value="Log Out" style="width: 100px; margin: 0 auto; margin-top: 30px;">
			        </div>
				</form>
			</td>
		</tr>
		</table>
	</body>
</html>