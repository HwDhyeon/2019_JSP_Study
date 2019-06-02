<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Session</title>
	</head>
	<body>
		<%
			String userId = request.getParameter("id");
			String userPw = request.getParameter("passwd");
			
			if(userId.equals("admin") && userPw.equals("1234")) {
				session.setAttribute("userID", userId);
				session.setAttribute("userPW", userPw);
				out.println("세션 설정이 성공했습니다.<br>");
				out.println(userId + "님 환영합니다.");
			}
			else {
				out.println("세션 설정이 실패했습니다.");
			}
		%>
	</body>
</html>