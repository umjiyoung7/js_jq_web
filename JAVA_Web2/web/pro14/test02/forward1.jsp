<%--
  Created by IntelliJ IDEA.
  User: umjiy
  Date: 2019-08-22
  Time: 오후 5:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    request.setCharacterEncoding("utf-8");
    request.setAttribute("id", "hong");
    request.setAttribute("pwd", "1111");
    request.setAttribute("name", "홍길동");
    request.setAttribute("email", "hong@test.com");
%>
<html>
<head>
    <title>forward1.jsp</title>
</head>
<body>
<jsp:forward page="member1.jsp"></jsp:forward>
</body>
</html>
