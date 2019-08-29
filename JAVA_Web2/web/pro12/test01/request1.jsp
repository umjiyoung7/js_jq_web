<%--
  Created by IntelliJ IDEA.
  User: umjiy
  Date: 2019-08-15
  Time: 오후 5:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"
import="javax.servlet.RequestDispatcher"
pageEncoding="UTF-8"%>
<%
    request.setAttribute("name", "이순신");
    request.setAttribute("address", "서울시 강남구");
%>
<html>
<head>
    <title>request1.jsp</title>
</head>
<body>
<%
    RequestDispatcher dispatch = request.getRequestDispatcher("request2.jsp");
    dispatch.forward(request, response);
%>
</body>
</html>
