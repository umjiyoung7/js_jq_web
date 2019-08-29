<%--
  Created by IntelliJ IDEA.
  User: umjiy
  Date: 2019-07-24
  Time: 오후 3:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <title>ex04</title>
</head>
<body>
<c:forEach var="i" begin="2" end="9">
    <h2>${i}단</h2>
    <c:forEach var="j" begin="1" end="9">
        ${i} X ${j} = ${i*j}<br>
    </c:forEach>
</c:forEach>

</body>
</html>
