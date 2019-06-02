<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.Date"%>
<html>
<head>
<link
	href="https://fonts.googleapis.com/css?family=Nanum+Gothic+Coding&display=swap&subset=korean"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	rel="stylesheet">
<style type="text/css">
p {
	font-family: 'Nanum Gothic Coding', monospace;
}

h3 {
	font-family: 'Nanum Gothic Coding', monospace;
}

body {
	background-image: linear-gradient(135deg, #f5f7fa 0%, #c3cfe2 100%) !important;
}
</style>
<title>대한민국 1등 구인구직 Plan A</title>
</head>
<body>
	<%@ include file="menu.jsp"%>
	<div class="container">
		<div class="text-center">
			<div style="margin-top: 300px">
			<h3>Welcome to Plan A</h3>
			<hr width="400px" color="#33333" style="height: 2px">
			<p>
				<font size="5" color="#0100FF">What is Plan A?</font><br /> <br />
				<span style="color: #99004C">Plan A</span>는 대한민국의 프리랜서와 구인이 필요한
				사장님들을 위한 구인·구직 사이트입니다.<br /> 구인·구직을 원하시는 분들은 누구든 자유롭게 게시글을 작성하고 접촉할 수 있습니다.<br /><br /><br />
				<a href="#exampleModal" onclick="exampleModal" data-toggle="modal" class="btn btn-outline-success" style="color: #333333;">지금 시작해보세요  <i class="fas fa-arrow-right"></i></a>
			</p>
			</div>
		</div>
	</div>
	<div class="container">
		<div class="text-center">
			<div style="margin-top: 275px">
				<%@ include file="footer.jsp"%>
			</div>
		</div>
	</div>
</body>
</html>