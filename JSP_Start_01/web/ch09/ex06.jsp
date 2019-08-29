<%--
  Created by IntelliJ IDEA.
  User: umjiy
  Date: 2019-07-24
  Time: 오후 3:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page import="java.util.Date" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>ex06</title>
</head>
<body>
<%
    Date date = new Date();
    out.println(date + "<br>");
%>
<c:set var="date" value="<%=new Date()%>">
    ${date}<br>
    <fmt:formatDate value="${date}">
        <c:out value="#{date}"></c:out>

    </fmt:formatDate><br>
    <fmt:formatDate value="${date}" type="date"></fmt:formatDate><br>
    <fmt:formatDate value="${date}" type="time"></fmt:formatDate><br>
    <fmt:formatDate value="${date}" pattern="yyyy-MM-dd HH:mm:ss"></fmt:formatDate><br>
    <fmt:formatDate value="${date}" dateStyle="full"></fmt:formatDate><br>
    <fmt:formatDate value="${date}" dateStyle="long"></fmt:formatDate><br>
    <fmt:formatDate value="${date}" dateStyle="medium"></fmt:formatDate><br>
    <fmt:formatDate value="${date}" dateStyle="short"></fmt:formatDate><br>

    <c:set var="num" value="123.456789">
        ${num}<br>
        <fmt:formatNumber value="${num}" groupingUsed="true"></fmt:formatNumber><br>
        <fmt:formatNumber value="${num}" pattern="###,####"></fmt:formatNumber><br>
        <fmt:formatNumber value="${num}" pattern="#,###,###.000"></fmt:formatNumber><br>
    </c:set>

    <p>number : <fmt:parseNumber value="1,234,567.89" type="number"></fmt:parseNumber></p>
    <p>currency : <fmt:parseNumber value="12345abcdef" integerOnly="false" type="number"></fmt:parseNumber></p>

</c:set>
</body>
</html>
