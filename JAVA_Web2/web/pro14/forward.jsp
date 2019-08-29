<%--
  Created by IntelliJ IDEA.
  User: umjiy
  Date: 2019-08-22
  Time: 오후 2:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    request.setCharacterEncoding("utf-8");
    request.setAttribute("address", "서울시 강남구");
%>
<html>
<head>
    <title>forward.jsp</title>
</head>
<body>
<jsp:forward page="member2.jsp"></jsp:forward>
</body>
</html>
