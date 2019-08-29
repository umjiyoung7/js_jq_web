<%--
  Created by IntelliJ IDEA.
  User: umjiy
  Date: 2019-08-23
  Time: 오후 4:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    request.setCharacterEncoding("utf-8");
%>
<html>
<head>
    <title>login.jsp</title>
</head>
<body>
<form action="result2.jsp" method="post">
    아이디 : <input type="text" name="userId"><br>
    비번 : <input type="password" name="userPw"><br>
    <input type="submit" value="로그인">
    <input type="reset" value="다시 입력">
</form>
</body>
</html>
