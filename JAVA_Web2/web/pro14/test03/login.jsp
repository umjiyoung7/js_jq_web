<%--
  Created by IntelliJ IDEA.
  User: umjiy
  Date: 2019-08-22
  Time: 오후 6:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"
isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<html>
<head>
    <title>login.jsp</title>
</head>
<body>
<form action="result.jsp">
    아이디 : <input type="text" size="20"/><br>
    비번 : <input type="password" size="20"/><br>
    <input type="submit" value="로그인">
    <input type="reset" value="다시입력">
    <br><br>
    <a href="${pageContext.request.contextPath}/pro14/memberForm.jsp">회원가입하기</a>
    <a href="${contextPath}/pro14/memberForm.jsp">회원가입하기</a>
</form>

</body>
</html>
