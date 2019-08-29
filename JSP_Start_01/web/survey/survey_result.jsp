<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Insert title here</title></head>
<body>
<!-- 태그라이브러리 로딩 -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<h2>설문조사 결과</h2>
<table border="1">
    <tr align="center"> <!-- 가운데정렬 -->
        <th>문항</th>
        <th>응답수</th>
        <th>응답률</th>
    </tr>     <!-- var="개별변수" items="집합변수" -->
    <c:forEach var="dto" items="${list}">
        <tr>
            <td>${dto.num}</td>
            <td>${dto.sum_num}</td>
            <td>${dto.rate}%</td>
        </tr>
    </c:forEach>
</table>

<table border="1">
<tr align="center"> <!-- 가운데정렬 -->
    <th>문항</th>
    <th>응답수</th>
    <th>응답률</th>
</tr>     <!-- var="개별변수" items="집합변수" -->
<c:forEach var="dto" items="${list2}">
    <tr>
        <td>${dto.num}</td>
        <td>${dto.sum_num}</td>
        <td>${dto.rate}%</td>
    </tr>
</c:forEach>
</table>
<a href="/survey_servlet/input.do">설문메인화면</a></body>
</html>