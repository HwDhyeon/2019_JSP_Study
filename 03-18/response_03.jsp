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
			String site = request.getParameter("sitename");
			switch(site) {
				case "naver" :
					response.sendRedirect("https://naver.com/");
					break;
				case "daum" :
					response.sendRedirect("https://daum.net/");
					break;
				case "google" :
					response.sendRedirect("https://google.co.kr/");
					break;
			}
		%>
	</body>
</html>