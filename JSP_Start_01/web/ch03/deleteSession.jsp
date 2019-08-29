<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
</head>
<body>
<%
    //session.removeAttribute("id"); //삭제할 변수명 : 하나씩 지울 때 사용
    session.invalidate(); //세션을 초기화시킴(모든 세션변수가 삭제됨)%>
세션이 삭제되었습니다.<br>
<a href="viewSession.jsp">세션 확인</a>
</body>
</html>