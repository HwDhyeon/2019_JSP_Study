<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Insert title here</title>
		<style type="text/css">
			b {
				font-size: 16pt;
			}
		</style>
	</head>
	<body>
		<h2>설문 조사 결과</h2>
		<%
			request.setCharacterEncoding("UTF-8");
			String goback = "'javascript:history.go(-1)'";
			String name = request.getParameter("name");
			String gender = request.getParameter("gender");
			String[] seasonArray = request.getParameterValues("season");
			
			out.println("이름 : <b>" + name +"</b><br>");
			
			if(gender.equals("male")) {
				out.println("성별 : <b>남자</b><br>");
			}
			else if(gender.equals("female")) {
				out.println("성별 : <b>여자</b><br>");
			}
			else {
				out.println("성별 : <b>밝히지 않음</b><br>");
			}
			
			out.println("당신이 좋아하는 계절은 ");
			
			for(String season: seasonArray) {
				switch(season) {
					case "spring" :
						out.println("<b>봄</b> ");
						break;
					case "summer" :
						out.println("<b>여름</b> ");
						break;
					case "fall" :
						out.println("<b>가을</b> ");
						break;
					case "winter" :
						out.println("<b>겨울</b> ");
						break;
				}
			}
			out.println("입니다.<br>");
			out.print("<b><a href=" + goback +"></a></b>");
		%>
	</body>
</html>