<%--
  Created by IntelliJ IDEA.
  User: umjiy
  Date: 2019-08-23
  Time: 오후 5:43
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
    <title>guguResult1.jsp</title>
</head>
<body>
<c:set var="dan" value="${param.dan}"></c:set>
<table border="1" width="800" align="center">
    <tr align="center" bgcolor="pink">
        <td colspan="2"><c:out value="${dan}"/>단 출력</td>
    </tr>
    <c:forEach var="i" begin="1" end="9" step="1">
        <c:if test="${i%2==0}">
            <tr align="center" bgcolor="#90ee90">
        </c:if>
        <c:if test="${i%2==1}">
            <tr align="center" bgcolor="#f08080">
        </c:if>
            <td width="400">
                <c:out value="${dan}"/>*<c:out value="${i}"/>
            </td>
            <td width="400">
                <c:out value="${i*dan}"/>
            </td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
