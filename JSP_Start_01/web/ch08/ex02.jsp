<%--
  Created by IntelliJ IDEA.
  User: umjiy
  Date: 2019-07-24
  Time: 오후 1:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="" method="post">
    이름 <input type="text" name="name">
    <input type="submit" value="확인">
</form>
<%
    String name = request.getParameter("name");
%>
이름 : <%=name%>
</body>
</html>
