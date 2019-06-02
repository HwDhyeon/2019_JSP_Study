<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link
	href="https://fonts.googleapis.com/css?family=Nanum+Gothic+Coding&display=swap&subset=korean"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<link href="https://fonts.googleapis.com/css?family=Gamja+Flower&display=swap" rel="stylesheet">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원가입</title>
<style type="text/css">
.top {
  float: right; 
  width: 100%; 
  text-align: center;
}
.content {
  clear: both; 
  height: 240px; 
  position: relative;
  text-align: center;
}

.mainfont {
	font-family: 'Nanum Gothic Coding', monospace;
}

font {
	font-family: 'Gamja Flower', cursive;
}

body {
	background-image: linear-gradient(-20deg, #e9defa 0%, #fbfcdb 100%) !important;
	min-height: 1080px;
}
</style>
</head>
<body>
	<%@ include file="menu.jsp"%>
	<div class="top" style="margin-top: 240px;">
	 	<p><font size="40px">당신은 누구입니까?</font></p>
	</div>
	<div class="content">
		<div class="mainfont">
	 		<p>회원가입 유형을 선택해주세요</p>
	 		<div style="margin-top: 80px;">
	 			<a class="btn btn-info" href="signup_company.jsp"><i class="fas fa-building" style="font-size: 50px"></i></a>

	 			<a class="btn btn-dark" style="margin-left: 150px; color: white" href="signup_user.jsp"><i class="fas fa-user" style="font-size: 50px"></i></a>
	 		</div>
	 		<div style="margin-top: 30px;">
	 			<p style="font-size: 12pt;" class="mainfont">나는 구인이 필요합니다&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	 			나는 구직이 필요합니다</p>
	 		</div>
	 	</div>
	</div>
</body>
</html>