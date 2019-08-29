<%--
  Created by IntelliJ IDEA.
  User: umjiy
  Date: 2019-08-23
  Time: 오후 4:15
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
    <title>member9.jsp</title>
</head>
<body>
<table align="center" border="1">
    <tr align="center" bgcolor="pink">
        <td width="7%"><b>아이디</b></td>
        <td width="7%"><b>비번</b></td>
        <td width="7%"><b>이름</b></td>
        <td width="7%"><b>이메일</b></td>
    </tr>
    <c:choose>
        <c:when test="${empty param.id}">
            <tr align="center">
                <td colspan="5">아이디를 입력하시오!!!</td>
            </tr>
        </c:when>
        <c:otherwise>
            <tr align="center">
                <td><c:out value="${param.id}"/></td>
                <td><c:out value="${param.pwd}"/></td>
                <td><c:out value="${param.name}"/></td>
                <td><c:out value="${param.email}"/></td>
            </tr>
        </c:otherwise>
    </c:choose>
</table>

</body>
</html>
