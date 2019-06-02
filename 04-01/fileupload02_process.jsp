<%@page import="java.io.PrintWriter"%>
<%@page import="java.util.Enumeration"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>File Upload</title>
	</head>
	<body>
		<%
			PrintWriter pw = response.getWriter();
			MultipartRequest multi = new MultipartRequest(request, "C:\\upload", 5 * 1024 * 1024, "utf-8", new DefaultFileRenamePolicy());
			Enumeration files = multi.getFileNames();
			String[] name = { multi.getParameter("name1"), multi.getParameter("name2"), multi.getParameter("name3") };
			String[] subject = { multi.getParameter("subject1"), multi.getParameter("subject2"), multi.getParameter("subject3") };
			String[] file = { files.nextElement().toString(), files.nextElement().toString(), files.nextElement().toString() };
			String[] filename = { multi.getFilesystemName(file[0]), multi.getFilesystemName(file[1]), multi.getFilesystemName(file[2]) };
		%>
		<table border="1">
			<tr>
				<th width="100">이름</th>
				<th width="100">제목</th>
				<th width="100">파일</th>
			</tr>
			<tr>
				<td><%= name[0] %></td>
				<td><%= subject[0] %></td>
				<td><%= filename[0] %></td>
			</tr>
			<tr>
				<td><%= name[1] %></td>
				<td><%= subject[1] %></td>
				<td><%= filename[1] %></td>
			</tr>
			<tr>
				<td><%= name[2] %></td>
				<td><%= subject[2] %></td>
				<td><%= filename[2] %></td>
			</tr>
		</table>
	</body>
</html>