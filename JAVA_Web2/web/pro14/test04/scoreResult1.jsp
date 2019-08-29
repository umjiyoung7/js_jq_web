<%--
  Created by IntelliJ IDEA.
  User: umjiy
  Date: 2019-08-23
  Time: 오후 4:58
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
    <title>scoreResult1.jsp</title>
</head>
<body>
<c:set var="score" value="${param.score}"></c:set>
<h1>시험점수 : <c:out value="${score}"></c:out></h1> <br>
<c:choose>
    <c:when test="${score >= 90 && score<=100}">
        <h1>A</h1>
    </c:when>
    <c:when test="${score >= 80 && score<90}">
        <h1>B</h1>
    </c:when>
    <c:when test="${score >= 70 && score<80}">
        <h1>C</h1>
    </c:when>
    <c:when test="${score >= 60 && score<70}">
        <h1>D</h1>
    </c:when>
    <c:when test="${score >= 0 && score<60}">
        <h1>F</h1>
    </c:when>
    <c:otherwise>
        <h1>점수 다시 입력</h1>
        <a href="scoreTest.jsp">시험점수 다시 입력</a>
    </c:otherwise>
</c:choose>
</body>
</html>
