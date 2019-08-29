<%--
  Created by IntelliJ IDEA.
  User: umjiy
  Date: 2019-08-20
  Time: 오후 4:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    request.setCharacterEncoding("utf-8");
%>
<html>
<head>
    <title>include2.jsp</title>
</head>
<body>
<%--안녕하세요. 쇼핑몰 중심 JSP 시작!!!--%>
<br>
<jsp:include page="duke_image.jsp" flush="true">
    <jsp:param name="name" value="듀크2"/>
    <jsp:param name="imgName" value="duke2.png"/>
</jsp:include>
<br>
<%--바이바이. 쇼핑몰 중심 JSP 끝!!!--%>
</body>
</html>
