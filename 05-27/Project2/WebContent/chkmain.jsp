<%@page import="db.Oracle.DBConnect"%>
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
		RequestDispatcher rd1 = request.getRequestDispatcher("welcome.jsp");
		RequestDispatcher rd2 = request.getRequestDispatcher("welcome.jsp");
		
		String chk = request.getAttribute("usrchk").toString();
		
		if(chk.equals("user")) {
			rd1.forward(request, response);
		} else if(chk.equals("company")) {
			rd2.forward(request, response);
		} else {
			rd1.forward(request, response);
		}
	%>
</body>
</html>