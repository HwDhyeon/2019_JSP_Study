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
			PrintWriter pw = response.getWriter();
			String path = "C:\\upload";
			DiskFileUpload upload = new DiskFileUpload();
			upload.setSizeMax(100000);
			upload.setSizeThreshold(4096);
			upload.setRepositoryPath(path);
			List items = upload.parseRequest(request);
			Iterator params = items.iterator();
			
			while(params.hasNext()) {
				FileItem item = (FileItem)params.next();
				if(item.isFormField()) {
					String name = item.getFieldName();
					String value = item.getString("utf-8");
					pw.printf("%s = %s<br>", name, value);
				}
				else {
					String fileFieldName = item.getFieldName();
					String fileName = item.getName();
					String contentType = item.getContentType();
					fileName = fileName.substring(fileName.lastIndexOf("\\") + 1);
					long fileSize = item.getSize();
					
					File file = new File(path + "/" + fileName);
					item.write(file);
					
					pw.printf("-----------------------------<br>");
					pw.printf("요청 파라미터 이름 : %s<br>", fileFieldName);
					pw.printf("저장 파일 이름 : %s<br>", fileName);
					pw.printf("파일 콘텐츠 이름 : %s<br>", contentType);
					pw.printf("파일 크기 : %d<br>", fileSize);
				}
			}
		%>
	</body>
</html>