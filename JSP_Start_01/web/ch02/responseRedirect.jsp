<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
</head>
<body>
<%@ page import="java.net.URLEncoder" %>
<%
    //response 내장객체(클라이언트 관련 서비스)
    // 지정된 페이지로 이동
//String name="김철수";
// url 에는 한글,특수문자 사용이 제한되므로 url 에서 사용가능한 형식으로 인코딩해야 함
// URLEncoder.encode("인코딩할문자열","인코딩형식")
    String name = URLEncoder.encode("김철수", "utf-8");
    int age = 20; // ...jsp?변수=값&변수=값
    response.sendRedirect("responseRedirected.jsp?name=" + name + "&age=" + age);
%>
</body>
</html>