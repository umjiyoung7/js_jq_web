<%--
  Created by IntelliJ IDEA.
  User: umjiy
  Date: 2019-09-04
  Time: 오후 8:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"
         isELIgnored="false" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath"  value="${pageContext.request.contextPath}"  />
<%
    request.setCharacterEncoding("UTF-8");
%>
<html>
<head>
    <title>listMembers.jsp</title>
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

    <c:forEach var="member" items="${membersList}">
        <tr align="center">
            <td>${member.id}</td>
            <td>${member.pwd}</td>
            <td>${member.name}</td>
            <td>${member.email}</td>
            <td>${member.joinDate}</td>
        </tr>
    </c:forEach>
</table>
<a href="${contextPath}/member/memberForm.do"><h1 style="text-align: center">회원가입</h1></a>
</body>
</html>
