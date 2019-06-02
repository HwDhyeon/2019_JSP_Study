<%@page import="java.util.Enumeration"%>
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
			String name, value;
			Enumeration<?> enumeration = session.getAttributeNames();
			int i=0;
			while(enumeration.hasMoreElements()) {
				i++;
				name = enumeration.nextElement().toString();
				value = session.getAttribute(name).toString();
				out.println("설정된 세션 이름 [ " + i + " ] : " + name + "<br>");
				out.println("설정된 세션 값   [ " + i + " ] : " + value + "<br>");
			}
			
			session.removeAttribute("userID");
		%>
		<h4>세션 삭제 후</h4>
		<%
			enumeration = session.getAttributeNames();
			i = 0;
			while(enumeration.hasMoreElements()) {
				i++;
				name = enumeration.nextElement().toString();
				value = session.getAttribute(name).toString();
				out.println("설정된 세션 이름 [ " + i + " ] : " + name + "<br>");
				out.println("설정된 세션 값   [ " + i + " ] : " + value + "<br>");
			}
		%>
	</body>
</html>