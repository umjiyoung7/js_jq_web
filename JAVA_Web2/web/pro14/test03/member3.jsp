<%--
  Created by IntelliJ IDEA.
  User: umjiy
  Date: 2019-08-22
  Time: 오후 7:13
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
<c:set var="name" value="홍길동" scope="page"/>
<c:set var="age" value="22" scope="page"/>
<c:set var="height" value="177" scope="page"/>
<c:remove var="age"/>
<c:remove var="height"/>
<html>
<head>
    <title>member3.jsp</title>
    <style>
        tr {align: center;}
        td {width: 7%; bgcolor: pink;}
    </style>
</head>
<body>
<table align="center" border="1">
    <tr>
        <td><b>아이디</b></td>
        <td><b>비번</b></td>
        <td><b>이름</b></td>
        <td><b>나이</b></td>
        <td><b>키</b></td>
    </tr>
    <tr>
        <td>${id}</td>
        <td>${pwd}</td>
        <td>${name}</td>
        <td>${age}</td>
        <td>${height}</td>
    </tr>
</table>
</body>
</html>
