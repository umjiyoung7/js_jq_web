<%--
  Created by IntelliJ IDEA.
  User: umjiy
  Date: 2019-08-15
  Time: 오후 5:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    request.setCharacterEncoding("utf-8");
    String name = request.getParameter("name");
    String age = request.getParameter("age");
%>
<html>
<head>
    <title>out2.jsp</title>
</head>
<body>
<%
    if(name!=null||name.length()!=0){
%>
<h1><%=name%>, <%=age%></h1>
<%
    }else{
%>
<h1>이름을 입력하세요</h1>
<%
    }
%>
<%
    if(name != null || name.length() != 0){
%>
<h1><% out.println(name + ", " + age); %></h1>
<%
    }else{
%>
<h1>이름을 입력하세요</h1>
<%
    }
%>
</body>
</html>
