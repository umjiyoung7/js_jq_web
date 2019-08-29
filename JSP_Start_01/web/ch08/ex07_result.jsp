<%--
  Created by IntelliJ IDEA.
  User: umjiy
  Date: 2019-07-24
  Time: 오후 2:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="member.MemberDTO" %>
<html>
<head>
    <title>ex07_result</title>
</head>
<body>
<%
    MemberDTO dto = (MemberDTO) request.getAttribute("dto");
%>
이름: <%=dto.getName()%><br>
아이디: <%=dto.getUserid()%><br>
비번: <%=dto.getPasswd()%><br>

이름: ${dto.name}<br>
아이디:${dto.userid}<br>
비번:${dto.passwd}<br>

</body>
</html>
