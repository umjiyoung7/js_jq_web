<%--
  Created by IntelliJ IDEA.
  User: umjiy
  Date: 2019-08-23
  Time: 오후 4:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"
         import="java.util.*"
isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    request.setCharacterEncoding("utf-8");
%>
<html>
<head>
    <title>escapeXml.jsp</title>
</head>
<body>
<h2>escapeXml 변환하기</h2>
<h2>
    <pre>
        <c:out value="&lt;" escapeXml="true"/>
        <c:out value="&lt;" escapeXml="false"/>

        <c:out value="&gt;" escapeXml="true"/>
        <c:out value="&gt;" escapeXml="false"/>

        <c:out value="&amp;" escapeXml="true"/>
        <c:out value="&amp;" escapeXml="false"/>

        <c:out value="&#039;" escapeXml="true"/>
        <c:out value="&#039;" escapeXml="false"/>

        <c:out value="&#034;" escapeXml="true"/>
        <c:out value="&#034;" escapeXml="false"/>
    </pre>
</h2>
</body>
</html>
