<%--
  Created by IntelliJ IDEA.
  User: umjiy
  Date: 2019-08-23
  Time: 오후 4:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"
isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    request.setCharacterEncoding("utf-8");
%>
<html>
<head>
    <title>result.jsp</title>
</head>
<body>
<c:if test="${empty param.userId}">
    아이디를 입력하세요!!! <br>
    <a href="login.jsp">로그인 창</a>
</c:if>
<c:if test="${empty param.userPw}">
    비번을 입력하세요!!! <br>
    <a href="login.jsp">로그인 창</a>
</c:if>
<c:if test="${not empty param.userId && not empty param.userPw}">
    <h1>환영합니다. <c:out value="${param.userId}"/>님!!!</h1>
</c:if>

</body>
</html>
