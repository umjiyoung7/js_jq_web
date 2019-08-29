<%--
  Created by IntelliJ IDEA.
  User: umjiy
  Date: 2019-08-23
  Time: 오후 5:09
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
    <title>scoreResult2.jsp</title>
</head>
<body>
<c:set var="score" value="${param.score}"/>
<h1>시험 점수 : <c:out value="${score}"/></h1><br>
<c:choose>
    <c:when test="${score>=0 && score<=100}">
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
            <c:otherwise>
                <h1>F</h1>
            </c:otherwise>
        </c:choose>
    </c:when>
    <c:otherwise>
        <h1>점수를 잘못 입력했습니다. 다시 입력해주세요.</h1>
        <a href="scoreTest.jsp">점수 입력 창으로 이동</a>
    </c:otherwise>
</c:choose>
</body>
</html>
