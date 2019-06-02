<%@page import="java.io.PrintWriter"%>
<%@page import="java.text.NumberFormat"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.util.Locale"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Internationalization</title>
	</head>
	<body>
		<%
			PrintWriter printWriter = response.getWriter();
			Locale locale = request.getLocale();
			Date currentDate = new Date();
			DateFormat dateFormat = DateFormat.getDateInstance(DateFormat.FULL, locale);
			NumberFormat numberFormat = NumberFormat.getNumberInstance(locale);
			
			printWriter.printf("<h3>현재 로케일의 국가, 날짜, 통화</h3>");
			printWriter.printf("국가 : %s<br>", locale.getDisplayCountry().toString());
			printWriter.printf("날짜 : %s<br>", dateFormat.format(currentDate).toString());
			printWriter.printf("숫자 : %s<br>", numberFormat.format(12345.67).toString());
		%>
	</body>
</html>