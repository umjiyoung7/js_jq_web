<%--
  Created by IntelliJ IDEA.
  User: umjiy
  Date: 2019-08-22
  Time: 오후 2:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"
isELIgnored="false" %>
<%
    request.setCharacterEncoding("utf-8");
%>
<jsp:useBean id="m" class="sec14.ex01.MemberBean"/>
<jsp:setProperty name="m" property="*"/>
<html>
<head>
    <title>member3.jsp</title>
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
        <td><%=m.getId()%></td>
        <td><%=m.getPwd()%></td>
        <td><%=m.getName()%></td>
        <td><%=m.getEmail()%></td>
    </tr>
    <tr>
        <td>${m.id}</td>
        <td>${m.pwd}</td>
        <td>${m.name}</td>
        <td>${m.email}</td>
    </tr>
</table>
</body>
</html>
