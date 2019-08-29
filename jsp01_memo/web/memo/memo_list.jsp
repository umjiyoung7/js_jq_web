<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- 태그라이브러리 선언 -->
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Insert title here</title></head>
<body>
<table border="1">
    <tr>
        <th>ID</th>  <!-- Table Header 제목셀 -->
        <th>이름</th>
        <th>메모</th>
        <th>날짜</th>
    </tr>
    <c:forEach var="row" items="${list}"> <!-- var="개별변수" items="집합변수" -->
        <tr>
            <td>${row.idx}</td>    <!-- 개별변수.필드명  실제로는 getter 가 호출됨 -->
            <td>${row.writer}</td>
            <td><a href="/memo_servlet/view.do?idx=${row.idx}">${row.memo}</a></td>
            <td>${row.post_date}</td>
        </tr>
    </c:forEach></table>
</body>
</html>