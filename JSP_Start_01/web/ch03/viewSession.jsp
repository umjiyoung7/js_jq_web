<%--
  Created by IntelliJ IDEA.
  User: umjiy
  Date: 2019-07-23
  Time: 오후 3:59
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
<%-- <% //자바코드를 이용하는 방법 String id=(String)session.getAttribute("id"); int age=(Integer)session.getAttribute("age"); double height=(Double)session.getAttribute("height"); %> 아이디 : <%=id%>, 나이 : <%=age%>, 신장 : <%=height%><br> --%>

<!-- EL(표현언어) 사용 방법 -->
아이디 : ${sessionScope.id},
나이 : ${sessionScope.age},
신장 : ${sessionScope.height}

<br>
<a href="deleteSession.jsp">세션 삭제</a>
</body>
</html>
