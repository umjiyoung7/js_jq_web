<%--
  Created by IntelliJ IDEA.
  User: umjiy
  Date: 2019-08-24
  Time: 오후 4:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"
isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    request.setCharacterEncoding("utf-8");
%>
<html>
<head>
    <title>first.jsp</title>
</head>
<body>
<form method="post" action="result.jsp">
    <input type="hidden" name="param1" value="duke.png"/><br>
    <input type="hidden" name="param2" value="duke2.png"/><br>
    <input type="submit" value="다운로드">
</form>
</body>
</html>
