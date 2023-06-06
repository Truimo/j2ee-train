<%--
  Created by IntelliJ IDEA.
  User: qianxiaomo
  Date: 2023/6/6
  Time: 11:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
${sessionScope.user.name}<br>
${requestScope.name}<br>
${requestScope.myname}<br>
${requestScope.age}<br>
${sessionScope.gender}<br>
${sessionScope.name}<br>
</body>
</html>
