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
		<%
			session.setAttribute("s_name1", "세션에 저장된 첫 번째 값");
			session.setAttribute("s_name2", "세션에 저장된 두 번째 값");
			session.setAttribute("s_name3", "세션에 저장된 세 번째 값");
			
			out.println("<h3> >> 세션 값 삭제 전 <<</h3>");
			
			Enumeration<String> names = session.getAttributeNames();
			while(names.hasMoreElements()) {
				String name = names.nextElement().toString();
				String value = session.getAttribute(name).toString();
				
				out.println(name + " : " + value + "<br>");
			}
		%>
	</body>
</html>