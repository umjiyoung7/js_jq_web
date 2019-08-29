<%--
  Created by IntelliJ IDEA.
  User: umjiy
  Date: 2019-08-20
  Time: 오후 4:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    request.setCharacterEncoding("utf-8");
%>
<html>
<head>
    <title>result.jsp</title>
</head>
<body>
<%
    String userId = request.getParameter("userId");
    if (userId.length() == 0) {
%>
<jsp:forward page="login.jsp"></jsp:forward>
<%
    }
%>
<h1>환영합니다 <%=userId%>님!!!</h1>
</body>
</html>
