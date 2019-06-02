<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<table border="1">
			<tr>
				<th>요청 파라미터 이름</th>
				<th>요청 파라미터 인수</th>
			</tr>
			<%
				request.setCharacterEncoding("utf-8");
				Enumeration paramNames = request.getParameterNames();
				while(paramNames.hasMoreElements()) {
					String name = paramNames.nextElement().toString();
					out.println("<tr><td>" + name + "</td>\n");
					String paramValue = request.getParameter(name);
					out.println("<td>" + paramValue + "</td></tr>\n");
				}
			%>
		</table>
	</body>
</html>