<%--
  Created by IntelliJ IDEA.
  User: umjiy
  Date: 2019-08-20
  Time: 오후 6:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    request.setCharacterEncoding("utf-8");
%>
<jsp:useBean id="m" class="sec13.ex1.MemberBean" scope="page"/>
<jsp:setProperty name="m" property="*"/>

<html>
<head>
    <title>member7.jsp</title>
</head>
<body>
<table align="center" width="100%">
    <tr align="center" bgcolor="#ffc0cb">
        <td width="7%">아이디</td>
        <td width="7%">비번</td>
        <td width="5%">이름</td>
        <td width="11%">이메일</td>
        <td width="5%">가입일</td>
    </tr>
    <tr align="center">
        <td>
            <jsp:getProperty name="m" property="id"/>
        </td>
        <td>
            <jsp:getProperty name="m" property="pwd"/>
        </td>
        <td>
            <jsp:getProperty name="m" property="name"/>
        </td>
        <td>
            <jsp:getProperty name="m" property="email"/>
        </td>

    </tr>

    <tr height="1" bgcolor="#87ceeb">
        <td colspan="5"></td>
    </tr>
</table>
</body>
</html>
