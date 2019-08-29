<%--
  Created by IntelliJ IDEA.
  User: umjiy
  Date: 2019-07-24
  Time: 오후 3:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <title>ex01</title>
</head>
<body>
<c:set var="country" value="Korea"></c:set>
<c:set var="strValue" value="나무"></c:set>
<c:if test="${country != null}">
    국가명 : ${country}<br>
</c:if>
<%
    int[] nums = {10, 20, 80, 50, 40, 30, 0, -50};
%>
<c:set var="name" value="<%=nums%>"></c:set>
<c:forEach var="n" items="${num}">
${n},
</c:forEach>

<c:set var="season" value="겨울"></c:set>
<c:choose>
    <c:when test="${season == '봄'}">
        <img src="/images/spring.jpg" alt="">
    </c:when>
    <c:when test="${season == '여름'}">
        <img src="/images/summer.jpg" alt="">
    </c:when>
    <c:when test="${season == '가을'}">
        <img src="/images/autumn.jpg" alt="">
    </c:when>
    <c:when test="${season == '겨울'}">
        <img src="/images/winter3.jpg" alt="">
    </c:when>
    <c:otherwise>기타 모든 경우</c:otherwise>
</c:choose>
</body>
</html>
