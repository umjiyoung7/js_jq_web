<%--
  Created by IntelliJ IDEA.
  User: umjiy
  Date: 2019-08-24
  Time: 오후 2:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"
import="java.util.*, sec14.ex03.*"
isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
    request.setCharacterEncoding("utf-8");
%>
<c:set var="contextName" value="${pageContext.request.contextPath}"/>
<html>
<head>
    <title>search.jsp</title>
</head>
<body>
<form method="post" action="member_action.jsp">
    <input type="hidden" name="command" value="search"/>
    이름 : <input type="text" name="name"><br>
    <input type="submit" value="조회">
    <a href="${contextName}/pro14/test06/memberForm.jsp">회원 가입하기</a>
</form>

</body>
</html>
