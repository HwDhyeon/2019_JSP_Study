<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Implicit Objects</title>
	</head>
	<body>
		<%
			request.setCharacterEncoding("utf-8");
			String userId = request.getParameter("id"), userPassword = request.getParameter("password");
			
			if(userId.equals("Admin") && userPassword.equals("1234")) {
				response.sendRedirect("response01_success.jsp");
			}
			else {
				response.sendRedirect("response01_failed.jsp");
			}
			
		%>
	</body>
</html>