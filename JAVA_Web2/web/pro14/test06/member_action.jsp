<%--
  Created by IntelliJ IDEA.
  User: umjiy
  Date: 2019-08-24
  Time: 오후 1:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"
import="java.util.*, sec14.ex03.*"
isELIgnored="false" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    request.setCharacterEncoding("utf-8");
%>
<html>
<head>
    <title>member_action.jsp</title>
    <%
        String command = (String) request.getParameter("command");
        MemberDAO memDAO = new MemberDAO();
        List membersList = null;
        if(command.equals("addMember")){
    %>
    <jsp:useBean id="m" class="sec14.ex03.MemberBean"/>
    <jsp:setProperty name="m" property="*"/>
    <%
        memDAO.addMember(m);
        membersList = memDAO.listMembers();
        } else if (command.equals("search")) {
            String name = request.getParameter("name");
            MemberBean memberBean = new MemberBean();
            memberBean.setName(name);
            membersList = memDAO.listMembers(memberBean);
        }
        request.setAttribute("membersList", membersList);
    %>
</head>
<body>
<jsp:forward page="membersList.jsp"></jsp:forward>
</body>
</html>
