<%--
  Created by IntelliJ IDEA.
  User: youfs
  Date: 2019-05-28
  Time: 오후 1:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>sumTwoNumber</title>
</head>
<body>
    <%
        int num1 = 20, num2 = 10;
        out.print(num1 + " + " + num2 + " = " + Math.addExact(num1, num2));
    %>
</body>
</html>
