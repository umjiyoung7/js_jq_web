<%--
  Created by IntelliJ IDEA.
  User: umjiy
  Date: 2019-08-22
  Time: 오후 3:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"
         import="java.util.*"
         import="sec14.ex01.*"
         isELIgnored="false" %>
<%
    request.setCharacterEncoding("utf-8");
%>
<jsp:useBean id="m1" class="sec14.ex01.MemberBean"/>
<jsp:setProperty name="m1" property="*"/>
<jsp:useBean id="membersList" class="java.util.ArrayList"/>
<jsp:useBean id="membersMap" class="java.util.HashMap"/>
<%
    membersMap.put("id", "park2");
    membersMap.put("pwd", "1111");
    membersMap.put("name", "박지성");
    membersMap.put("email", "park2@test.com");

    MemberBean m2 = new MemberBean("son", "1234", "손흥민", "son@test.com");
    membersList.add(m1);
    membersList.add(m2);
    membersMap.put("membersList", membersList);

%>
<html>
<head>
    <title>member5.jsp</title>
    <style>
        tr {align: center;}
        th {text-align: left; bgcolor: pink;}
        td {text-align: left; width: 20%;}
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
        <td>${membersMap.id}</td>
        <td>${membersMap.pwd}</td>
        <td>${membersMap.name}</td>
        <td>${membersMap.email}</td>
    </tr>
    <tr>
        <td>${membersMap.membersList[0].id}</td>
        <td>${membersMap.membersList[0].pwd}</td>
        <td>${membersMap.membersList[0].name}</td>
        <td>${membersMap.membersList[0].email}</td>
    </tr>
    <tr>
        <td>${membersMap.membersList[1].id}</td>
        <td>${membersMap.membersList[1].pwd}</td>
        <td>${membersMap.membersList[1].name}</td>
        <td>${membersMap.membersList[1].email}</td>
    </tr>
</table>
</body>
</html>
