<%--
  Created by IntelliJ IDEA.
  User: umjiy
  Date: 2019-08-23
  Time: 오후 4:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>memberForm.jsp</title>
    <style>
        .d1 {width: 200px;}
        .d2 {width: 400px;}
        p {text-align: right;}
    </style>
</head>
<body>
<form method="post" action="member9.jsp">
    <h1 style="text-align: center">회원 등록창</h1>
    <table align="center">
        <tr>
            <td class="d1"><p>아이디</p></td>
            <td class="d2"><input type="text" name="id"></td>
        </tr>
        <tr>
            <td class="d1"><p>비번</p></td>
            <td class="d2"><input type="password" name="pwd"></td>
        </tr>
        <tr>
            <td class="d1"><p>이름</p></td>
            <td class="d2"><input type="text" name="name"></td>
        </tr>
        <tr>
            <td class="d1"><p>이메일</p></td>
            <td class="d2"><input type="text" name="email"></td>
        </tr>
        <tr>
            <td class="d1"><p>&nbsp;</p></td>
            <td class="d2">
                <input type="submit" value="가입하기">
                <input type="reset" value="다시 입력">
            </td>
        </tr>
    </table>
</form>
</body>
</html>
