<%--
  Created by IntelliJ IDEA.
  User: umjiy
  Date: 2019-08-20
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
<h1>아이디를 입력하지 않았습니다. 아이디를 입력해 주세요.</h1>
<form action="result.jsp" method="post">
    아이디 : <input type="text" name="userId"><br>
    비번 : <input type="password" name="userPw"><br>
    <input type="submit" value="로그인">
    <input type="reset" value="다시입력">
</form>
</body>
</html>
