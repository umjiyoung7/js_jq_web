<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Insert title here</title> <%-- 모든 페이지 공통부분을 이렇게 사용함.--%>
    <%@ include file="/include/header.jsp" %>
</head>
<body>
<h2>쿠키 만들기</h2>
<%
    Cookie cookie = new Cookie("id", "김철수"); // new Cookie(변수명,값)
    // 한글일때는 하위버
    Cookie cookie2 = new Cookie("pwd", "1234");
    //Cookie cookie3=new Cookie("name","김철수");
    //Cookie cookie3=new Cookie("age","30"); //스트링만 가능
    response.addCookie(cookie); //response.addCookie(쿠키객체)
    response.addCookie(cookie2);
%>
쿠키가 생성되었습니다.
<br>
<a href="useCookie.jsp">쿠키 확인</a>
</body>
</html>