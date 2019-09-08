<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"
         isELIgnored="false" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    request.setCharacterEncoding("UTF-8");
%>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<html>
<head>
    <title>memberInfo.jsp</title>
</head>
<body>
<table border="1" align="center" width="80%">
    <tr align="center" bgcolor="#ffc0cb">
        <td><b>아이디</b></td>
        <td><b>비번</b></td>
        <td><b>이름</b></td>
        <td><b>이메일</b></td>
        <td><b>가입일</b></td>
    </tr>
    <tr align="center">
        <td>${member.id} </td>
        <td>${member.pwd} </td>
        <td>${member.name} </td>
        <td>${member.email} </td>
        <td>${member.joinDate}</td>
    </tr>
</table>
</body>
</html>