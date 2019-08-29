<%--
  Created by IntelliJ IDEA.
  User: umjiy
  Date: 2019-08-24
  Time: 오후 12:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    request.setCharacterEncoding("utf-8");
    pageContext.setAttribute("crcn", "\r\n");
    pageContext.setAttribute("br", "<br>");
%>
<c:set var="content" value="${param.content}"/>
<html>
<head>
    <title>lineChange2.jsp</title>
</head>
<body>
${content} <br><br>
${fn:replace(content, crcn, br)} <br><br>
</body>
</html>
