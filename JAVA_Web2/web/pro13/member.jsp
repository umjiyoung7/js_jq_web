<%@ page import="sec13.ex1.MemberBean" %>
<%@ page import="sec13.ex1.MemberDAO" %>
<%@ page import="java.util.List" %>
<%@ page import="sec13.ex1.MemberDAO" %><%--
  Created by IntelliJ IDEA.
  User: umjiy
  Date: 2019-08-20
  Time: 오후 5:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    request.setCharacterEncoding("utf-8");
%>
<%
    String id = request.getParameter("id");
    String pwd = request.getParameter("pwd");
    String name = request.getParameter("name");
    String email = request.getParameter("email");

    MemberBean m = new MemberBean(id, pwd, name, email);
    MemberDAO memberDAO = new MemberDAO();
    memberDAO.addMember(m);
    List membersList = memberDAO.listMembers();
%>
<html>
<head>
    <title>member.jsp</title>
</head>
<body>
<table align="center" width="100%">
    <tr align="center" bgcolor="pink">
        <td width="7%">아이디</td>
        <td width="7%">비번</td>
        <td width="5%">이름</td>
        <td width="11%">이메일</td>
        <td width="5%">가입일</td>
    </tr>
    <%
        if(membersList.size()==0){
    %>
    <tr>
        <td colspan="5">
            <p align="center"><b><span style="font-size: 9pt;">등록된 회원이 없습니다.</span></b></p>
        </td>
    </tr>
    <%
        }else{
            for(int i = 0; i < membersList.size(); i++) {
                MemberBean bean = (MemberBean) membersList.get(i);
    %>
    <tr align="center">
        <td>
            <%=bean.getId()%>
        </td>
        <td>
            <%=bean.getPwd()%>
        </td>
        <td>
            <%=bean.getName()%>
        </td>
        <td>
            <%=bean.getEmail()%>
        </td>
        <td>
            <%=bean.getJoinDate()%>
        </td>
    </tr>
    <%
            }
        }
    %>
    <tr height="1" bgcolor="#87ceeb">
        <td colspan="5"></td>
    </tr>
</table>

</body>
</html>
