<%--
  Created by IntelliJ IDEA.
  User: umjiy
  Date: 2019-08-22
  Time: 오후 5:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" 
import="sec14.ex01.*" %>
<%
    request.setCharacterEncoding("utf-8");
    MemberBean member = new MemberBean("lee", "1111", "이순신", "lee@test.com");
    request.setAttribute("member", member);
%>
<html>
<head>
    <title>forward2.jsp</title>
</head>
<body>
<jsp:forward page="member2.jsp"></jsp:forward>
</body>
</html>
