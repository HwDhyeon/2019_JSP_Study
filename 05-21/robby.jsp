<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<link rel="stylesheet" type="text/css" href="./StyleFolder/Styles.css">
		<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css" integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay" crossorigin="anonymous">
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Insert title here</title>
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
    					<td colspan="4">
							<span style="color:white"><h2>직원 커뮤니티</h2></span>
						</td>
    				</tr>
    				<tr>
    					<td>글 번호</td>
    					<td>제목</td>
    					<td>글쓴이</td>
    					<td>날짜</td>
    				</tr>
	    			<%
						Connection conn = null;
						PreparedStatement stmt = null;
						ResultSet rs = null;
				
						int total = 0;
						String driver = "oracle.jdbc.driver.OracleDriver";
						String url = "jdbc:oracle:thin:@localhost:1521:XE";
						String DatabaseId = "scott", DatabasePw = "tiger";
						String query = "select * from community";
						Class.forName(driver);
						conn = DriverManager.getConnection(url, DatabaseId, DatabasePw);
						stmt = conn.prepareStatement(query);
						rs = stmt.executeQuery();
						
						while(rs.next()) {
							String idx = rs.getString("postnumber");
							String subject = rs.getString("subject");
							String writer = rs.getString("writer");
							String date = rs.getString("writedate");
							
							out.println("<tr>");
							out.println("<td>" + idx + "</td>");
							out.println("<td><a href='view.jsp?q=" + subject + "'>" + subject + "</a></td>");
							out.println("<td>" + writer + "</td>");
							out.println("<td>" + date.substring(0, date.length() - 9) + "</td>");
							out.println("</tr>");
						}
						
						if(conn != null) conn.close();
						if(stmt != null) stmt.close();
						if(rs != null) rs.close();
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