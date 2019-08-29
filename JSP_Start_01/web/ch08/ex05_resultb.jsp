<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: umjiy
  Date: 2019-07-24
  Time: 오후 2:02
  To change this template use File | Settings | File Templates.
--%>
<html>
<head>
    <title>ex05_resultb</title>
</head>
<body>
<%--<%--%>
<%--    ArrayList<String> items = (ArrayList<String>) request.getAttribute("items");--%>

<%--%>--%>
<c:forEach var="fruit" items="${items}">
    ${fruit}<br>
</c:forEach>

</body>
</html>
