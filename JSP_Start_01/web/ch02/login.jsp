<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Insert title here</title></head>
<body>

<form method="post" action="/ch02_servlet/login.do">
    아이디 <input type="text" name="id" size="10">
    비밀번호 <input type="password" name="pass" size="10">
    <input type="submit" value="로그인">
</form>
<!-- 로그인 결과 메시지를 출력할 태그 -->
<span style="color:red;">${param.message}</span>

</body>
</html>