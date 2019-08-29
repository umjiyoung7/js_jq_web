<%--
  Created by IntelliJ IDEA.
  User: umjiy
  Date: 2019-08-15
  Time: 오후 3:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    request.setCharacterEncoding("utf-8");
    int dan = Integer.parseInt(request.getParameter("dan"));
%>
<html>
<head>
    <title>gugu.jsp</title>
</head>
<body>
<table border="1" width="800">
    <tr align="center" bgcolor="#fafad2">
        <td colspan="2"><%=dan%>단 출력</td>
    </tr>
    <%
        for(int i=1; i<10; i++) {
    %>
    <%
        if(i%2==1){
    %>
    <tr align="center" bgcolor="pink">
    <%
            }else{
    %>
    <tr align="center" bgcolor="#87ceeb">
    <%
        }
    %>
        <td width="400">
            <%=dan%> * <%=i%>
        </td>
        <td width="400">
            <%=i*dan%>
        </td>
    </tr>
    <%
        }
    %>
</table>
</body>
</html>
