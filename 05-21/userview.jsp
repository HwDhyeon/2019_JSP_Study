<%@page import="java.util.ArrayList"%>
<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<link rel="stylesheet" type="text/css" href="./StyleFolder/Styles.css">
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Modify User</title>
	</head>
	<body class="align">
	
	<table>
		<tr>
			<td>이름</td>
			<td>이메일</td>
			<td>부서</td>
			<td>봉급</td>
			<td>직급</td>
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
				
				ArrayList<String> info = new ArrayList<String>(); 
				
				while(rs.next()) {
					info.add(rs.getString("username"));
					info.add(rs.getString("userid"));
					info.add(rs.getString("department"));
					info.add(rs.getString("pay"));
					info.add(rs.getString("positionname"));
					
					out.println("<tr>");
					out.println("<td>" + info.get(0) + "</td>");
					out.println("<td>" + info.get(1) + "</td>");
					out.println("<td>" + info.get(2) + "</td>");
					out.println("<td>" + info.get(3) + "</td>");
					out.println("<td>" + info.get(4) + "</td>");
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
		</table>
	</body>
</html>