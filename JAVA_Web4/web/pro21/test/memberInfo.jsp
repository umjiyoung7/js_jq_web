<%--
  Created by IntelliJ IDEA.
  User: umjiy
  Date: 2019-09-03
  Time: 오후 9:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"
isELIgnored="false" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>memberInfo.jsp</title>
</head>
<body>
<table border="1" align="center" width="100%" >
    <tr align=center   bgcolor="lightgreen">
        <td ><b>아이디</b></td>
        <td><b>비밀번호</b></td>
        <td><b>이름</b></td>
        <td><b>이메일</b></td>
    </tr>
    <tr align="center">
        <td>${id}</td>
        <td>${pwd}</td>
        <td>${name}</td>
        <td>${email}</td>
    </tr>
</table>
</body>
</html>
