<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Validation</title>
	</head>
	<script type="text/javascript">
		function CheckForm() {
			alert("아이디 : " + document.loginForm.id.value + "\n비밀번호 : " + document.loginForm.passwd.value);
		}
	</script>
	<body>
		<form name="loginForm" action="#" method="post">
			<p>아이디 : <input type="text" name="id">
			<p>비밀번호 : <input type="password" name="passwd">
			<p><input type="submit" value="전송" onclick="CheckForm()">
		</form>
	</body>
</html>