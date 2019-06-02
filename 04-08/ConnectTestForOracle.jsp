<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<%
			Connection conn=null;
			String driver = "oracle.jdbc.driver.OracleDriver";
			String url = "jdbc:oracle:thin:@localhost:1521:XE";
			String userId = "scott";
			String userPw = "tiger";
				
			Boolean connect = false;
				
			try{
			    Class.forName(driver);
			    conn=DriverManager.getConnection(url, userId, userPw); //자신의 아이디와 비밀번호
			    connect = true;
			    conn.close();
			}catch(Exception e){
			    connect = false;
			    e.printStackTrace();
			}
			%>
			<%
			if(connect==true){%>
			    연결되었습니다.
			<%}else{ %>
			    연결에 실패하였습니다.
			<%}%> 
	</body>
</html>