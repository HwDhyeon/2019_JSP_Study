<%--
  Created by IntelliJ IDEA.
  User: youfs
  Date: 2019-05-28
  Time: 오후 2:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>ZTT</title>
</head>
<body>
    <%
        for(int i=0;i<=10;i++) {
            if(i % 2 == 0) {
                out.println(i + "<br />");
            }
        }
    %>
</body>
</html>
