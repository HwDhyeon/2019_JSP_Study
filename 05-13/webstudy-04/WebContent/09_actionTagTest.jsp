<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>actionTagTest</title>
	</head>
	<body>
		<%
			String userId = request.getParameter("userId");
			String userPw = request.getParameter("userPw");
			String loginCheck = request.getParameter("loginCheck");
			
			if(loginCheck.equals("user")) {
		%>
				<jsp:forward page="09_userMain.jsp">
				<jsp:param value='<%= URLEncoder.encode("전고객", "UTF-8") %>' name="userName"/>
				</jsp:forward>
		<%
			}
			else {
		%>
				<jsp:forward page="09_managerMain.jsp">
				<jsp:param value='<%= URLEncoder.encode("성관리", "UTF-8") %>' name="userName"/>
				</jsp:forward>
		<%	} %>
	</body>
</html>