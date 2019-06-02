<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Form Processing</title>
	</head>
	<body>
		<h3>Register</h3>
		<form action="form04_process.jsp" name="member" method="post">
			<p>ID   : <input type="text" name="id"> <input type="button" value="idCheck">
			<p>PW   : <input type="password" name="pw">
			<p>NAME : <input type="text" name="name">
			<p>연락처 : <select name="phone1">
						<option value="010">010</option>
						<option value="010">011</option>
						<option value="010">016</option>
						<option value="010">017</option>
						<option value="010">019</option>
					</select>
			- <input type="text" name="phone2" maxlength="4" size="4">
			- <input type="text" name="phone3" maxlength="4" size="4">
			<p>성별 : <input type="radio" name="gender" value="남성" checked="checked">남성
					<input type="radio" name="gender" value="여성">여성
			<p>취미 : 독서<input type="checkbox" name="hobby1" value="독서" checked="checked">
					운동<input type="checkbox" name="hobby2" value="운동">
					영화<input type="checkbox" name="hobby3" value="영화">
			<p><textarea rows="3" cols="30" name="comment" placeholder="가입인사를 입력해주세요"></textarea>
			<p><input type="submit" value="가입하기"> <input type="reset" value="다시쓰기">
		</form>
	</body>
</html>