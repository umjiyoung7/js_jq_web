<%--
  Created by IntelliJ IDEA.
  User: umjiy
  Date: 2019-08-23
  Time: 오후 2:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"
import="java.util.*"
isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contestPath" value="${pageContext.request.contextPath}"/>
<c:url var="url1" value="/pro14/member1.jsp">
    <c:param name="id" value="hong"/>
    <c:param name="pwd" value="1111"/>
    <c:param name="name" value="홍길동"/>
    <c:param name="email" value="hong@test.com"/>
</c:url>
<html>
<head>
    <title>urlTest.jsp</title>
</head>
<body>
<a href="${url1}">회원 정보 출력</a>
</body>
</html>
