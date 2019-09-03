<%--
  Created by IntelliJ IDEA.
  User: umjiy
  Date: 2019-09-03
  Time: 오후 7:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"
isELIgnored="false" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    request.setCharacterEncoding("utf-8");
%>
<html>
<head>
    <title>result.jsp</title>
</head>
<body>
<table border="1" width="50%" align="center">
    <tr align="center">
        <td>아이디</td>
        <td>비번</td>
    </tr>
    <tr align="center">
        <td>${userID}</td>
        <td>${passwd}</td>
    </tr>
</table>
</body>
</html>
