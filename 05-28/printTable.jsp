<%--
  Created by IntelliJ IDEA.
  User: youfs
  Date: 2019-05-28
  Time: 오후 1:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Table</title>
</head>
<body>
    <table border="1" style="border: 1px">
        <%
            int n=3;
            for(int i=0;i<n;i++) {
        %>
            <tr>
                <td>Number</td>
                <td><%= i + 1 %></td>
            </tr>
        <%
            }
        %>
    </table>
</body>
</html>
