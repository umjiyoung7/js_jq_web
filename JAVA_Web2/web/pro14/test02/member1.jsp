<%--
  Created by IntelliJ IDEA.
  User: umjiy
  Date: 2019-08-22
  Time: 오후 5:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"
isELIgnored="false" %>
<%
    request.setCharacterEncoding("utf-8");
    String id = (String) request.getAttribute("id");
    String pwd = (String) request.getAttribute("pwd");
    String name = (String) request.getAttribute("name");
    String email = (String) request.getAttribute("email");
%>
<html>
<head>
    <title>member1.jsp</title>
    <style>
        tr {align: center;}
        th {text-align: left; bgcolor: pink;}
        td {text-align: left; width: 20%;}
    </style>
</head>
<body>
<table border="1" align="center">
    <tr>
        <th><b>아이디</b></th>
        <th><b>비번</b></th>
        <th><b>이름</b></th>
        <th><b>이메일</b></th>
    </tr>
    <tr>
        <td><%=id%></td>
        <td><%=pwd%></td>
        <td><%=name%></td>
        <td><%=email%></td>
    </tr>
    <tr>
        <td>${id}</td>
        <td>${pwd}</td>
        <td>${name}</td>
        <td>${email}</td>
    </tr>
</table>
</body>
</html>
