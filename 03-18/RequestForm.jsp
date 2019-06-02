<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<form action="RequestParameter.jsp" method="get">
			이름		: <input type="text" name="name" size="10"><br>
			아이디 	: <input type="text" name="id" size="10"><br>
			비밀번호	: <input type="password" name="pw" size="10"><br>
			취미		:
					<input type="checkbox" name="hobby" value="read" checked="checked">독서
					<input type="checkbox" name="hobby" value="cook">요리
					<input type="checkbox" name="hobby" value="run">조깅
					<input type="checkbox" name="hobby" value="swim">수영<br>
			전공		:
					<input type="radio" name="major" value="kor">국어
					<input type="radio" name="major" value="eng">영어
					<input type="radio" name="major" value="design">수영<br>
			Protocol:
					<select name="protocol">
						<option value="http">HTTP</option>
						<option value="ftp">FTP</option>
						<option value="smtp" selected="selected">SMTP</option>
						<option value="pop">POP</option>
					</select><br>
			<input type="submit" value="전송">
			<input type="reset" value="취소">
		</form>
	</body>
</html>