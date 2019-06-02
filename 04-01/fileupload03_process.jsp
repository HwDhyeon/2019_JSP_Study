<%@page import="java.io.*"%>
<%@page import="org.apache.commons.fileupload.*"%>
<%@page import="java.util.*"%>
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
			String fileUploadPath = "C:\\upload";
			DiskFileUpload upload = new DiskFileUpload();
			List items = upload.parseRequest(request);
			Iterator params = items.iterator();
			
			while(params.hasNext()) {
				FileItem fileItem = (FileItem)params.next();
				if(!fileItem.isFormField()) {
					String fileName = fileItem.getName();
					fileName = fileName.substring(fileName.lastIndexOf("\\") + 1);
					File file = new File(fileUploadPath + "/" + fileName);
					fileItem.write(file);
				}
			}
		%>
	</body>
</html>