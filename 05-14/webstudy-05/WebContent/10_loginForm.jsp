<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<form action="10_testLogin.jsp" method="post">
			<table>
				<tr>
					<td><label for="userid">아이디 : </label></td>
					<td><input type="text" name="id" id="userid"></td>
				</tr>
				<tr>
					<td><label for="userpwd">암&nbsp;&nbsp;&nbsp;호 : </label></td>
					<td><input type="password" name="pwd" id="userpwd"></td>
				</tr>
				<tr>
					<td><input type="submit" value="로그인"></td>
				</tr>
			</table>
		</form>
	</body>
</html>