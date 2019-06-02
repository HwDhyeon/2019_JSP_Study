<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Validation</title>
	</head>
	<script type="text/javascript">
		function checkLogin() {
			var form = document.loginForm;
			var i;
			for(i=0;i<form.id.value.length;i++) {
				var ch = form.id.value.charAt(i);
				
				if((ch < 'a' || ch > 'z') && (ch > 'A' || ch < 'Z') && (ch > '0' || ch < '9')) {
					alert("아이디는 영문 소문자로만 입력 가능합니다.");
					form.id.select();
					return;
				}
			}
			
			if(isNaN(form.passwd.value)) {
				alert("비밀번호는 숫자로만 입력 가능 합니다.");
				form.passwd.select();
				return;
			}
			form.submit();
		}
	</script>
	<body>
		<form name="loginForm" action="validation04_process.jsp" method="post">
			<p>아이디 : <input type="text" name="id">
			<p>비밀번호 : <input type="password" name="passwd">
			<p><input type="button" value="전송" onclick="checkLogin()">
		</form>
	</body>
</html>