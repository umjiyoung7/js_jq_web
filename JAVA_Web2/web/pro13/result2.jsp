<%--
  Created by IntelliJ IDEA.
  User: umjiy
  Date: 2019-08-20
  Time: 오후 4:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    request.setCharacterEncoding("utf-8");
%>
<%!
    String msg = "아이디를 입력하지 않았습니다. 아이디를 입력해주세요.";
%>
<html>
<head>
    <title>result2.jsp</title>
</head>
<body>
<%
    String userId = request.getParameter("userId");
    if(userId.length()==0){
%>
<jsp:forward page="login2.jsp">
    <jsp:param name="msg" value="<%=msg%>"/>
</jsp:forward>
<%
    }
%>
<h1>환영합니다. <%=userId%>님!!!</h1>
</body>
</html>
