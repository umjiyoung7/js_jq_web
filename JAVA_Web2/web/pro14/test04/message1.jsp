<%--
  Created by IntelliJ IDEA.
  User: umjiy
  Date: 2019-08-23
  Time: 오후 6:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"
isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
    request.setCharacterEncoding("utf-8");
%>
<html>
<head>
    <title>message1.jsp</title>
</head>
<body>
<fmt:setLocale value="ko"/>
<%--<fmt:setLocale value="en"/>--%>
<h1>
    회원정보<br><br>
    <fmt:bundle basename="/sec14/member">
        이름 : <fmt:message key="mem.name"/><br>
        주소 : <fmt:message key="mem.address"/><br>
        직업 : <fmt:message key="mem.job"/>
    </fmt:bundle>
</h1>
</body>
</html>
