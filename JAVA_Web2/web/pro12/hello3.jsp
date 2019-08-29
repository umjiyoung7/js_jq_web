<%--
  Created by IntelliJ IDEA.
  User: umjiy
  Date: 2019-08-14
  Time: 오후 6:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%!
    String name = "이순신";
    public String getName() {
        return name;
    }
%>
<%
    String age = request.getParameter("age");
%>
<html>
<head>
    <title>표현식 연습</title>
</head>
<body>
<h1>안녕하세요 <%=name %>님!!!</h1>
<h1>나이는 <%=age %>살</h1>
<h1>키는 <%=180 %>cm</h1>
<h1>나이 + 10 <%=Integer.parseInt(age) + 10 %> 입니다</h1>
</body>
</html>
