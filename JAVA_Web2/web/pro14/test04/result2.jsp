<%--
  Created by IntelliJ IDEA.
  User: umjiy
  Date: 2019-08-23
  Time: 오후 4:48
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
    <title>result2.jsp</title>
</head>
<body>
<c:if test="${empty param.userId}">
    아이디를 입력하시오!!! <br>
    <a href="login.jsp">로그인 창</a>
</c:if>
<c:if test="${not empty param.userId}">
    <c:if test="${param.userId == 'admin'}">
        <h1>관리자로 로그인 함</h1>
        <form>
            <input type="button" value="회원 정보 삭제"/>
            <input type="button" value="회원 정보 수정"/>
        </form>
    </c:if>
    <c:if test="${param.userId != 'admin'}">
        <h1>환영합니다. <c:out value="${param.userId}"></c:out>님!!!!</h1>
    </c:if>
</c:if>
</body>
</html>
