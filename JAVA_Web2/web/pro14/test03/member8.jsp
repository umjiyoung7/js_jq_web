<%--
  Created by IntelliJ IDEA.
  User: umjiy
  Date: 2019-08-23
  Time: 오후 2:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"
import="java.util.*, sec14.ex01.*"
isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    request.setCharacterEncoding("utf-8");
    List membersList = new ArrayList();
    MemberBean m1 = new MemberBean("son", "1111", "손흥민", "son@test.com");
    MemberBean m2 = new MemberBean("ki", "1111", "기성용", "ki@test.com");
    MemberBean m3 = new MemberBean("park", "1111", "박지성", "park@test.com");
    membersList.add(m1);
    membersList.add(m2);
    membersList.add(m3);
%>
<c:set var="membeersList" value="<%=membersList%>"/>
<html>
<head>
    <title>member8.jsp</title>
</head>
<body>
<table border="1" align="center">
    <tr align="center" bgcolor="pink">
        <td width="7%"><b>아이디</b></td>
        <td width="7%"><b>비번</b></td>
        <td width="5%"><b>이름</b></td>
        <td width="5%"><b>이메일</b></td>
    </tr>
    <c:forEach var="member" items="${membeersList}">
        <tr align="center">
            <td>${member.id}</td>
            <td>${member.pwd}</td>
            <td>${member.name}</td>
            <td>${member.email}</td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
