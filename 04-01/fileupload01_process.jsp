<%@page import="com.oreilly.servlet.multipart.*"%>
<%@page import="com.oreilly.servlet.*"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="java.io.File"%>
<%@page import="java.util.Enumeration"%>
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
			PrintWriter pw = response.getWriter();
			MultipartRequest multi = new MultipartRequest(request, "C:\\upload", 5 * 1024 * 1024, "utf-8", new DefaultFileRenamePolicy());
			Enumeration params = multi.getParameterNames();
			
			
			while(params.hasMoreElements()) {
				String name = params.nextElement().toString();
				String value = multi.getParameter(name).toString();
				pw.printf("%s = %s<br>", name, value);
			}
			pw.printf("----------------------<br>");
			
			Enumeration files = multi.getFileNames();
			
			while(files.hasMoreElements()) {
				String name = files.nextElement().toString();
				String filename = multi.getFilesystemName(name);
				String original = multi.getOriginalFileName(name);
				String type = multi.getContentType(name);
				File file = multi.getFile(name);
				
				pw.printf("요청 파라미터 이름 : %s<br>", name);
				pw.printf("실제 파일 이름 : %s<br>", original);
				pw.printf("저장 파일 이름 : %s<br>", filename);
				pw.printf("파일 콘턴츠 유형 : %s<br>", type);
				
				if(file != null) {
					out.println("파일 크기 : " + file.length());
				}
			}
		%>
	</body>
</html>