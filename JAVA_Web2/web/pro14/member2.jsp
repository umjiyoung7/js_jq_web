<%--
  Created by IntelliJ IDEA.
  User: umjiy
  Date: 2019-08-22
  Time: 오후 2:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"
isELIgnored="false" %>
<html>
<head>
    <title>member2.jsp</title>
    <style>
        tr {align: center;}
        th {bgcolor: pink;}
        td {width: 20%;}
    </style>
</head>
<body>
<table vorder="1" align="center">
    <tr>
        <th><b>아이디</b></th>
        <th><b>비번</b></th>
        <th><b>이름</b></th>
        <th><b>이메일</b></th>
    </tr>
    <tr>
        <td>${param.id}</td>
        <td>${param.pwd}</td>
        <td>${param.name}</td>
        <td>${param.email}</td>
        <td>${requestScope.address}</td>
    </tr>
</table>
</body>
</html>
