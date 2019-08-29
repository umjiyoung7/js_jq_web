<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
</head>
<body>
<h2>세션의 유효시간</h2>
<%
    //현재 설정된 세션유효시간(초)을 읽음
    // web.xml 설정하지 않으면 기본값은 30 분으로 설정되어 있음
    // web.xml <session-timeout> 에 설정한 값으로 세센유효시간이 설정된다.
    // 아래는 이 페이지만 별도로 세션 유효시간을 변경하는 예제이다.

    session.setMaxInactiveInterval(5000); //20 분으로 설정
    int timeout = session.getMaxInactiveInterval();
    out.println("세션의 유효시간:" + timeout);
%>
</body>
</html>