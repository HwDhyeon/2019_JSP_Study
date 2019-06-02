<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Insert title here</title>
	</head>
	<body bgcolor="red">
		이 파일은 red.jsp입니다. <br>
		BGCOLOR는 빨간색일까요 노란색일까요 <hr>
		forward가 실행되는 이 문구는 출력되지 않습니다.<br>
		<jsp:forward page="08_yellow.jsp"></jsp:forward>
	</body>
</html>