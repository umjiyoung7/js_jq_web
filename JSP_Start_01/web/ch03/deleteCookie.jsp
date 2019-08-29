<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
</head>
<body>
<%
    //쿠키 삭제 함수는 별도로 없음
    Cookie cookie = new Cookie("id", ""); //쿠키값에 빈값을 넣고
    cookie.setMaxAge(0); //쿠키유효시간을 0 초로 설정하면 즉시 삭제됨
    response.addCookie(cookie);
%>
쿠키가 삭제되었습니다.<br>
<a href="useCookie.jsp">쿠키 확인</a>
</body>
</html>