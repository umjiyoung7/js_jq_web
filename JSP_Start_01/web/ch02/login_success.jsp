<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
    <!-- 세션 값을 체크해야 하는 모든 페이지에 아래 코드를 삽입 -->
    <%@ include file="/include/session_check.jsp" %>

</head>
<body>
<!-- 세션에 값을 저장하는 방법    session.setAttribute("변수명",값)
세션에 저장된 값을 읽는 방법 session.getAttribute("변수명")
하이퍼링크 텍스트 만들기   <a href="이동할주소">하이퍼링크</a> -->

<h2><%=session.getAttribute("message")%>
</h2>

접속중인 아이디 : <%=session.getAttribute("userid")%><br>

<a href="/ch02_servlet/logout.do">로그아웃</a>

</body>
</html>