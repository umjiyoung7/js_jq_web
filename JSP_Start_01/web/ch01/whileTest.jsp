<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>test</title></head>
<body>

<!-- 서블릿 : 서버에서 실행되는 자바 클래스
jsp 페이지로 직접 넘기지 않고 서블릿 클래스를 경유하여
jsp 페이지에 결과를 출력시키는 방식 -->

<form method="post" action="/ch01_servlet/while.do">
    단을 입력하세요
    <input type="text" name="dan">
    <input type="submit" value="확인"></form>

</body>
</html>