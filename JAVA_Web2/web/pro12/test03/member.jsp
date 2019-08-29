<%--
  Created by IntelliJ IDEA.
  User: umjiy
  Date: 2019-08-15
  Time: 오후 7:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"
import="java.util.*"
import="sec12.ex02.*"%>
<html>
<head>
    <title>member.jsp</title>
    <style>
        h1 { text-align: center;}
    </style>
</head>
<body>
<%
    request.setCharacterEncoding("utf-8");
    String _name = request.getParameter("name");
    MemberVO memberVO = new MemberVO();
    memberVO.setName(_name);
    MemberDAO dao = new MemberDAO();
    List membersList = dao.listMembers(memberVO);
%>
<table border="1" width="800" align="center">
    <tr align="enter" bgcolor="pink">
        <td>아이디</td>
        <td>비밀번호</td>
        <td>이름</td>
        <td>이메일</td>
        <td>가입일자</td>
    </tr>

<%
    for (int i = 0; i < membersList.size(); i++) {
        MemberVO vo = (MemberVO) membersList.get(i);
        String id = vo.getId();
        String pwd = vo.getPwd();
        String name = vo.getName();
        String email = vo.getEmail();
        Date joinDate = vo.getJoinDate();
%>
    <tr align="center">
        <td><%=id%></td>
        <td><%=pwd%></td>
        <td><%=name%></td>
        <td><%=email%></td>
        <td><%=joinDate%></td>
    </tr>

<%
    }
%>
</table>

</body>
</html>
