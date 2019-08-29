<%--
  Created by IntelliJ IDEA.
  User: umjiy
  Date: 2019-07-23
  Time: 오후 3:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"
pageEncoding="UTF-8" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    String id = "kim";
    String passwd = "1234";
    int age = 20;
    double height = 170.5;

    session.setAttribute("id", id);
    session.setAttribute("passwd", passwd);
    session.setAttribute("age", age);
    session.setAttribute("height", height);
%>
<a href="viewSession.jsp">세션 확인</a>
</body>
</html>
