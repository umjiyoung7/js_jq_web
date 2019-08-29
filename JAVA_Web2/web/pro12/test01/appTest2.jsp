<%--
  Created by IntelliJ IDEA.
  User: umjiy
  Date: 2019-08-15
  Time: 오후 5:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String name = (String) session.getAttribute("name");
    String address = (String) application.getAttribute("address");
%>
<html>
<head>
    <title>appTest2.jsp</title>
</head>
<body>
<h1>이름은 <%=name%>입니다.</h1>
<h1>주소는 <%=address%>입니다.</h1>
</body>
</html>
