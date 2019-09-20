<%--
  Created by IntelliJ IDEA.
  User: umjiy
  Date: 2019-09-03
  Time: 오후 9:15
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
    <title>memberForm.jsp</title>
    <style>
        .text_center{
            text-align:center;
        }
    </style>
</head>
<body>
<form method="post"   action="${contextPath}/pro21/test/memberInfo.do">
    <h1  class="text_center">회원 가입창</h1>
    <table  align="center">
        <tr>
            <td width="200"><p align="right">아이디</td>
            <td width="400"><input type="text" name="id"></td>
        </tr>
        <tr>
            <td width="200"><p align="right">비밀번호</td>
            <td width="400"><input type="password" name="pwd"></td>
        </tr>
        <tr>
            <td width="200"><p align="right">이름</td>
            <td width="400"><p><input type="text" name="name"></td>
        </tr>
        <tr>
            <td width="200"><p align="right">이메일</td>
            <td width="400"><p><input type="text" name="email"></td>
        </tr>
        <tr>
            <td width="200"><p>&nbsp;</p></td>
            <td width="400">
                <input type="submit" value="가입하기">
                <input type="reset" value="다시입력">
            </td>
        </tr>
    </table>
</form>
</body>
</html>