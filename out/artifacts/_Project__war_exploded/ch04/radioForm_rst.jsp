<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    String gender = request.getParameter("gender");
    String result = gender.equals("male") ? "남성" : "여성";
%>
성별 : <%= result%>
</body>
</html>
