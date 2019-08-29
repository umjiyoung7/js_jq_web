<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: umjiy
  Date: 2019-07-25
  Time: 오후 4:25
  To change this template use File | Settings | File Templates.
--%>
<!DOCTYPE html>
<html>
<head>
    <title>memo_list</title>
</head>
<body>
<table border="1">
    <tr>
        <th>ID</th>
        <th>이름</th>
        <th>메모</th>
        <th>날짜</th>
    </tr>
    <c:forEach var="row" items="${list}">
        <tr>
            <td>${row.idx}</td>
            <td>${row.writer}</td>
            <td>
                <a href="/memo_servlet/view.do?idx=${row.idx}">${row.memo}</a>
            </td>
            <td>${row.post_date}</td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
