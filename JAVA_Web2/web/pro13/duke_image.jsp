<%--
  Created by IntelliJ IDEA.
  User: umjiy
  Date: 2019-08-20
  Time: 오후 4:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    request.setCharacterEncoding("utf-8");
    String name = request.getParameter("name");
    String imgName = request.getParameter("imgName");
%>
<html>
<head>
    <title>duke_image.jsp</title>
</head>
<body>
안녕하세요. 쇼핑몰 중심 JSP 시작!!!<br><br>
<h1>이름은 <%=name%>입니다.</h1><br><br>
<img src="../image/<%=imgName%>"/><br><br>
바이바이. 쇼핑몰 중심 JSP 끝!!!
추추추추추가

</body>
</html>
