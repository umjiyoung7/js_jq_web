<%--
  Created by IntelliJ IDEA.
  User: umjiy
  Date: 2019-07-23
  Time: 오후 1:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    int a = Integer.parseInt(request.getParameter("num"));
%>
a : <%=a%>
</body>
</html>
