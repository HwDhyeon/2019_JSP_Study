<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Form Processing</title>
	</head>
	<body>
		<%
			request.setCharacterEncoding("utf-8");
			String id = request.getParameter("id");
			String pw = request.getParameter("pw");
			String name = request.getParameter("name");
			String[] phone = { request.getParameter("phone1"), request.getParameter("phone2"), request.getParameter("phone3") };
			String gender = request.getParameter("gender");
			String[] hobby = { request.getParameter("hobby1"), request.getParameter("hobby2"), request.getParameter("hobby3") };
			String comment = request.getParameter("comment");
			
			for(int i=0;i<3;i++) {
				if(hobby[i] == null) {
					hobby[i] = "";
				}
			}
			
			
			out.println("ID : " + id + "<br>");
			out.println("PW : " + pw + "<br>");
			out.println("NAME : " + name + "<br>");
			out.println("PHONE : " + phone[0] + " - " + phone[1] + " - " + phone[2] + "<br>");
			out.println("GENDER : " + gender + "<br>");
			out.println("HOBBY : " + hobby[0] + " " + hobby[1] + " " + hobby[2] + "<br>");
			out.println("COMMENT : " + comment + "<br>");
			
		%>
	</body>
</html>