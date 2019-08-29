<%--
  Created by IntelliJ IDEA.
  User: umjiy
  Date: 2019-08-22
  Time: 오후 2:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"
isELIgnored="false" %>
<html>
<head>
    <title>login.jsp</title>
</head>
<body>
<form action="result.jsp">
    아이디 : <input type="text" size="20"><br>
    비번 : <input type="password" size="20"><br>
    <input type="submit" value="로그인">
    <input type="reset" value="다시입력">
</form>
<br><br>
<a href="http://localhost/pro14/memberForm.jsp">회원가입하기</a>
<a href="<%=request.getContextPath() %>/pro14/memberForm.jsp">회원가입하기1</a>
<a href="${pageContext.request.contextPath}/pro14/memberForm.jsp">회원가입하기2</a>
</body>
</html>
