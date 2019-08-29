<%--
  Created by IntelliJ IDEA.
  User: umjiy
  Date: 2019-08-22
  Time: 오후 6:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"
isELIgnored="false" %>
<%
    session.setAttribute("address", "수원시 팔달구");
%>
<html>
<head>
    <title>member4.jsp</title>
    <style>
        table {border: solid 1px black; align: center;}
        tr {border: solid 1px black; align: center;}
        th {border: solid 1px black; bgcolor: pink;}
        td {border: solid 1px black;}
        .d1 {width: 7%;}
        .d2 {width: 5%;}
    </style>
</head>
<body>
<table>
    <tr>
        <th class="d1"><b>아이디</b></th>
        <th class="d1"><b>비번</b></th>
        <th class="d2"><b>이름</b></th>
        <th class="d2"><b>이메일</b></th>
        <th class="d2"><b>도시</b></th>
    </tr>
    <tr>
        <td>${id}</td>
        <td>${pwd}</td>
        <td>${name}</td>
        <td>${email}</td>
        <td>${address}</td>
    </tr>
</table>
</body>
</html>
