<%--
  Created by IntelliJ IDEA.
  User: umjiy
  Date: 2019-08-23
  Time: 오후 2:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"
isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    request.setCharacterEncoding("utf-8");
%>
<c:set var="id" value="hong" scope="page"/>
<c:set var="pwd" value="1111" scope="page"/>
<%--<c:set var="name" value="홍길동" scope="page"/>--%>
<c:set var="age" value="22" scope="page"/>
<c:set var="height" value="177" scope="page"/>
<html>
<head>
    <title>member5.jsp</title>
    <style>
        tr {align: center;}
        td {width: 7%; }
    </style>
</head>
<body>
<table align="center" border="1">
    <tr bgcolor="#ffc0cb">
        <td><b>아이디</b></td>
        <td><b>비번</b></td>
        <td><b>이름</b></td>
        <td><b>나이</b></td>
        <td><b>키</b></td>
    </tr>
    <c:choose>
        <c:when test="${empty name}">
            <tr>
                <td colspan="5">이름을 입력하시오!!!</td>
            </tr>
        </c:when>
        <c:otherwise>
            <tr>
                <td>${id}</td>
                <td>${pwd}</td>
                <td>${name}</td>
                <td>${age}</td>
                <td>${height}</td>
            </tr>
        </c:otherwise>
    </c:choose>
</table>
</body>
</html>
