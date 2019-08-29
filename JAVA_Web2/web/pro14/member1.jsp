<%--
  Created by IntelliJ IDEA.
  User: umjiy
  Date: 2019-08-22
  Time: 오후 2:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"
isELIgnored="false" %>
<%--<%--%>
<%--    request.setCharacterEncoding("UTF-8");--%>
<%--    String id = request.getParameter("id");--%>
<%--    String pwd = request.getParameter("pwd");--%>
<%--    String name = request.getParameter("name");--%>
<%--    String email = request.getParameter("email");--%>
<%--%>--%>
<html>
<head>
    <title>member1.jsp</title>
</head>
<body>
<table border="1" align="center">
    <tr align="center">
        <th width="20%" bgcolor="#ffc0cb"><b>아이디</b></th>
        <th width="20%" bgcolor="#ffc0cb"><b>비번</b></th>
        <th width="20%" bgcolor="#ffc0cb"><b>이름</b></th>
        <th width="20%" bgcolor="#ffc0cb"><b>이메일</b></th>
    </tr>
<%--    <tr>--%>
<%--        <td><%=id%></td>--%>
<%--        <td><%=pwd%></td>--%>
<%--        <td><%=name%></td>--%>
<%--        <td><%=email%></td>--%>
<%--    </tr>--%>
    <tr>
        <td>${param.id}</td>
        <td>${param.pwd}</td>
        <td>${param.name}</td>
        <td>${param.email}</td>
    </tr>

</table>
</body>
</html>
