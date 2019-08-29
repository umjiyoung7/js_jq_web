<%--
  Created by IntelliJ IDEA.
  User: umjiy
  Date: 2019-07-24
  Time: 오후 1:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>ex04_result</title>
</head>
<body>
이름 : <%=session.getAttribute("name")%>
나이 : <%=session.getAttribute("age")%>
직업 : <%=session.getAttribute("job")%>
이름 : ${sessionScope.name}<br>
나이 : ${sessionScope.age}<br>
직업 : ${sessionScope.job}<br>

</body>
</html>
