<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Action Tag</title>
	</head>
	<body>
		<jsp:useBean id="person" class="ch04.com.dao.Person" scope="request"></jsp:useBean>
		<jsp:setProperty property="id" name="person" value="20182005"/>
		<jsp:setProperty property="name" name="person" value="홍길동"/>
		<p>아이디 : <% out.println(person.getId()); %>
		<p>이름 : <% out.println(person.getName()); %>
	</body>
</html>