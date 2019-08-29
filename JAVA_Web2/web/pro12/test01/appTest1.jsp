<%--
  Created by IntelliJ IDEA.
  User: umjiy
  Date: 2019-08-15
  Time: 오후 5:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    session.setAttribute("name", "이순신");
    application.setAttribute("address", "서울시 성동구");
%>
<html>
<head>
    <title>appTest1.jsp</title>
</head>
<body>
<h1>이름과 주소를 저장합니다</h1>
<a href="appTest2.jsp">두 번째 웹 페이지로 이동</a>
</body>
</html>
