<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>actionTagForm</title>
	</head>
	<body>
		<form action="09_actionTagTest.jsp">
			<table>
				<tr>
					<td>아이디</td>
					<td><input type="text" name="userId"></td>
				</tr>
				<tr>
					<td>비밀번호</td>
					<td><input type="password" name="userPw"></td>
				</tr>
				<tr>
					<td><input type="radio" name="loginCheck" value="user" checked="checked">사용자</td>
					<td><input type="radio" name="loginCheck" value="admin">관리자</td>
				</tr>
				<tr>
					<td><input type="submit" value="로그인"></td>
				</tr>
			</table>
		</form>
	</body>
</html>