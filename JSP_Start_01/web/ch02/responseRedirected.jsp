<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
</head>
<body>
<h2>이동된 페이지</h2>
<%
    // ?name=김철수&age=20    request.getParameter("변수명")
    // 쿼리스트링
    String name = request.getParameter("name");
    int age = Integer.parseInt(request.getParameter("age"));
%>
이름:<%=name%><br>
나이:<%=age%>
</body>
</html>