<%--
  Created by IntelliJ IDEA.
  User: umjiy
  Date: 2019-08-22
  Time: 오후 6:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"
isELIgnored="false" %>
<%
    request.setCharacterEncoding("utf-8");
    request.setAttribute("id", "hong");
    request.setAttribute("pwd", "1111");
    session.setAttribute("name", "홍길동");
    application.setAttribute("email", "hong@test.com");
    request.setAttribute("address", "서울시 강남구");
%>
<html>
<head>
    <title>forward4.jsp</title>
</head>
<body>
<jsp:forward page="member4.jsp"></jsp:forward>
</body>
</html>
