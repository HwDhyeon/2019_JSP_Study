<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<%
			int age = Integer.parseInt(request.getParameter("age"));
		
			if(age < 20) {
		%>
				<script type="text/javascript">
					alert("19세 미만으로 입장이 불가능합니다.");
					history.go(-1);
				</script>
		<%
			}
			else {
				request.setAttribute("name", "관리자");
				RequestDispatcher dispatcher = request.getRequestDispatcher("05_forwardResult.jsp");
				dispatcher.forward(request, response);
			}
		%>
	</body>
</html>