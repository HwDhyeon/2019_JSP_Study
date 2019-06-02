<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<link rel="stylesheet" type="text/css" href="./StyleFolder/Styles.css">
		<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css" integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay" crossorigin="anonymous">
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>s</title>
	</head>
	<body>
		<%
			Connection conn = null;
			PreparedStatement pst = null;
			ResultSet rs = null;
			String driver = "oracle.jdbc.driver.OracleDriver";
			String url = "jdbc:oracle:thin:@localhost:1521:XE";
			String DatabaseId = "scott", DatabasePw = "tiger";
			String query = "delete from userinfo where username = ?";
			
			try {
				Class.forName(driver);
				conn = DriverManager.getConnection(url, DatabaseId, DatabasePw);
				pst = conn.prepareStatement(query);
				
				pst.setString(1, request.getParameter("q"));
				rs = pst.executeQuery();
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
		<script type="text/javascript">
			alert('직원 정보가 삭제되었습니다.');
			location.href="adminrobby.jsp";
		</script>
		
	</body>
</html>