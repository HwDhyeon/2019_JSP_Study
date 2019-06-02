<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link
	href="https://fonts.googleapis.com/css?family=Nanum+Gothic+Coding&display=swap&subset=korean"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	rel="stylesheet">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>계약합시다!</title>
</head>
<body>
	<%
		String q = request.getParameter("q");
		String w = request.getParameter("w");
	%>
	<script type="text/javascript">
		alert('접수되었습니다.');
		location.href="product.jsp?q=<%= q %>&w=<%=w%>";
	</script>
</body>
</html>