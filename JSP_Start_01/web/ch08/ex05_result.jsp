<%--
  Created by IntelliJ IDEA.
  User: umjiy
  Date: 2019-07-24
  Time: 오후 1:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.ArrayList" %>
<html>
<head>
    <title>ex05_result</title>
</head>
<body>
<%
    ArrayList<String> items = (ArrayList<String>) request.getAttribute("items");
    for (int i = 0; i < items.size(); i++) {
        out.println(items.get(i) + "<br>");
    }
%>
<br>
${items[0]}<br>
${items[1]}<br>
${items[2]}<br>
${items[3]}<br>
</body>
</html>
