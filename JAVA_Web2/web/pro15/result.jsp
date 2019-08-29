<%--
  Created by IntelliJ IDEA.
  User: umjiy
  Date: 2019-08-24
  Time: 오후 4:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"
isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<%
    request.setCharacterEncoding("utf-8");
%>
<html>
<head>
    <title>result.jsp</title>
    <c:set var="file1" value="${param.param1}"/>
    <c:set var="file2" value="${param.param2}"/>
</head>
<body>
매개 변수 1 : <c:out value="${file1}"/><br>
매개 변수 2 : <c:out value="${file2}"/><br>

<c:if test="${not empty file1}">
    <img src="${contextPath}/download.do?fileName=${file1}" width="300" height="300"/><br>
</c:if>
<br>
<c:if test="${not empty file2}">
    <img src="${contextPath}/download.do?fileName=${file2}" width="300" height="300"/><br>
</c:if>
파일 내려 받기 : <br>
<a href="${contextPath}/download.do?fileName=${file2}">파일 내려 받기</a><br>
</body>
</html>
