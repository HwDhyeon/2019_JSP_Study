<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Directives Tag</title>
	</head>
	<body>
		<%!
			int pageCount = 0;
			
			void addCount() {
				pageCount++;
			}
		%>
		<%
			addCount();
		%>
		<p>이 사이트 방문은 <%= pageCount %>번째입니다.</p>
	</body>
</html>