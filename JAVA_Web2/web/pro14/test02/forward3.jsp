<%--
  Created by IntelliJ IDEA.
  User: umjiy
  Date: 2019-08-22
  Time: 오후 5:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" 
import="java.util.*, sec14.ex01.*"
isELIgnored="false" %>
<%@ page import="java.lang.reflect.Member" %>
<%
    request.setCharacterEncoding("utf-8");
    List membersList = new ArrayList();
    MemberBean m1 = new MemberBean("lee", "1111", "이순신", "lee@test.com");
    MemberBean m2 = new MemberBean("son", "1111", "손흥민", "son@test.com");
    membersList.add(m1);
    membersList.add(m2);
    request.setAttribute("membersList", membersList);
%>
<html>
<head>
    <title>forward3.jsp</title>
</head>
<body>
<jsp:forward page="member3.jsp"></jsp:forward>
</body>
</html>
