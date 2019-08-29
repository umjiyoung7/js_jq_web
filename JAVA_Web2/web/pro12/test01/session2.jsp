<%--
  Created by IntelliJ IDEA.
  User: umjiy
  Date: 2019-08-15
  Time: 오후 5:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String name = (String) session.getAttribute("name");
    String address = (String) session.getAttribute("address");
%>
<html>
<head>
    <title>session2.jsp</title>
</head>
<body>
이름은 <%=name %>입니다. <br>
주소는 <%=address %>입니다. <br>
</body>
</html>
