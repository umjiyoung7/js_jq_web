<%--
  Created by IntelliJ IDEA.
  User: umjiy
  Date: 2019-07-24
  Time: 오후 2:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="member.MemberDTO" %>
<%@ page import="java.lang.reflect.Member" %>
<html>
<head>
    <title>ex07</title>
</head>
<body>
<%
    MemberDTO dto = new MemberDTO();
    dto.setUserid("kim");
    dto.setName("김철수");
    dto.setPasswd("1234");
    request.setAttribute("dto", dto);
%>
<jsp:forward page="ex07_result.jsp"></jsp:forward>
</body>
</html>
