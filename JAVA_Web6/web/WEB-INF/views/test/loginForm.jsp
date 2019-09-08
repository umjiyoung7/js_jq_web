<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"
         isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    request.setCharacterEncoding("UTF-8");
%>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<html>
<head>
    <title>loginForm.jsp</title>
</head>
<body>
<form method="post" action="${contextPath}/test/login4.do">
<%--    <input type="hidden" name="email" value="hong@test.com"/>--%>
    <table width="400">
        <tr>
            <td>아이디
            <input type="text" name="userID" size="10">
            </td>
        </tr>
        <tr>
            <td>이름
                <input type="text" name="userName" size="10">
            </td>
        </tr>
        <tr>
            <td>
                <input type="submit" value="로그인">
                <input type="reset" value="다시 입력">
            </td>
        </tr>
    </table>
</form>
</body>
</html>