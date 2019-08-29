<%--
  Created by IntelliJ IDEA.
  User: umjiy
  Date: 2019-08-15
  Time: 오후 5:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String name = (String) session.getAttribute("name");
    session.setAttribute("address", "서울시 강남구");
%>
<html>
<head>
    <title>session1.jsp</title>
</head>
<body>
이름은 <%=name%>입니다. <br>
<a href="session2.jsp">두 번째 페이지로 이동</a>
</body>
</html>
