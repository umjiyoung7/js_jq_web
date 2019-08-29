<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Insert title here</title></head>
<body>
<%
    //설문문항이 표시되고 응답할 수 있는 화면으로 이동
    response.sendRedirect("/survey_servlet/input.do");
%>
</body>
</html>