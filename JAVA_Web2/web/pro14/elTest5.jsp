<%--
  Created by IntelliJ IDEA.
  User: umjiy
  Date: 2019-08-22
  Time: 오후 1:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"
import="java.util.*"
pageEncoding="UTF-8"
isELIgnored="false" %>
<jsp:useBean id="m1" class="sec14.ex01.MemberBean" scope="page" />
<jsp:setProperty name="m1" property="name" value="이순신" />
<jsp:useBean id="m2" class="java.util.ArrayList" scope="page" />
<html>
<head>
    <title>elTest5.jsp</title>
</head>
<body>
empty 연산자
<h2>
    \${empty m1} : ${empty m1} <br>
    \${not empty m1} : ${not empty m1} <br>

    \${empty m2} : ${empty m2} <br>
    \${not empty m2} : ${not empty m2} <br>

    \${empty "hello"} : ${empty "hello"} <br>
    \${empty null} : ${empty null} <br>
    \${empty ""} : ${empty ""} <br>

</h2>

</body>
</html>
