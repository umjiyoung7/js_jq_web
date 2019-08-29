<%--
  Created by IntelliJ IDEA.
  User: umjiy
  Date: 2019-07-23
  Time: 오후 4:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"
pageEncoding="UTF-8" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Title</title>
</head>
<body>
<%
    Integer countNum = (Integer) session.getAttribute("counter");
    int num=1;
    if(countNum == null) {
        countNum = 1;
    }else {
        num=countNum.intValue();
        num++;
        countNum = num;
    }
    session.setAttribute("counter", countNum);
%>
<%=countNum.intValue()%>번째 방문임.<br>
<%
    String counter = Integer.toString(num);
    for (int i = 0; i < counter.length(); i++) {
        String img = "<img src='../images/" + counter.charAt(i) + ".gif'>";
        out.println(img);
    }
%>
</body>
</html>
