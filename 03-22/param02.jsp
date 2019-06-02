<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Action Tag</title>
	</head>
	<body>
		<h3>param Action Tag</h3>
		<jsp:include page="param02_data.jsp">
			<jsp:param value='<%=java.net.URLEncoder.encode("오늘의 날짜와 시각") %>' name="title"/>
			<jsp:param value="<%= java.util.Calendar.getInstance().getTime() %>" name="date"/>
		</jsp:include>
	</body>
</html>