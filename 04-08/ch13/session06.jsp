<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Session</title>
	</head>
	<body>
		<h4>세션 삭제 전</h4>
		<%
			String user_id = (String) session.getAttribute("userID");
			String user_pw = (String) session.getAttribute("userPW");
			
			out.println("설정된 세션 이름 userID : " + user_id + "<br>");
			out.println("설정된 세션 값   userPW : " + user_pw + "<br>");
			
			if(request.isRequestedSessionIdValid() == true) {
				out.println("세션이 유효합니다.");
			}
			else {
				out.println("세션이 유효하지 않습니다.");
			}
			
			session.invalidate();
		%>
		<h4>세션 삭제 후</h4>
		<%
			if(request.isRequestedSessionIdValid() == true) {
				out.println("세션이 유효합니다.");
			}
			else {
				out.println("세션이 유효하지 않습니다.");
			}
		%>
	</body>
</html>