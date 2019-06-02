<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Cookie</title>
	</head>
	<body>
		<%
			Cookie[] cookies = request.getCookies();
		
			out.println("현재 설정된 쿠키의 개수 => " + cookies.length + "<br>");
			out.println("================================<br>");
			
			for(int i=0;i<cookies.length;i++) {
				out.println("설정된 쿠키의 속성 이름 [ " + i + " ] : " + cookies[i].getName() + "<br>");
				out.println("설정된 쿠키의 속성 값   [ " + i + " ] : " + cookies[i].getValue() + "<br>");
				out.println("---------------------------------<br>");
			}
		%>
	</body>
</html>