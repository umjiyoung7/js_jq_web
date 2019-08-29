<%--
  Created by IntelliJ IDEA.
  User: umjiy
  Date: 2019-08-24
  Time: 오후 12:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"
isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%
    request.setCharacterEncoding("utf-8");
%>
<html>
<head>
    <title>lineChange.jsp</title>
</head>
<body>
<c:set var="title1" value="안녕하세요.<br> 쇼핑몰 중심 JSP"/>
${title1} <br><br>
<%--${fn:replace(title1, "\\r\\n", "<br>")}--%>
</body>
</html>
