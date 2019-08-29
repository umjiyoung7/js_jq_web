<%--
  Created by IntelliJ IDEA.
  User: umjiy
  Date: 2019-08-22
  Time: 오후 1:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"
isELIgnored="false" %>
<html>
<head>
    <title>elTest4.jsp</title>
</head>
<body>
<h2>여러 가지 논리 논리연산자</h2>
<h2>
    \${(10==10) && (20==20)} : ${(10==10) && (20==20)} <br>
    \${(10==10) and (20==20)} : ${(10==10) and (20==20)} <br>

    \${(10==10) || (20!=30)} : ${(10==10) || (20!=30)} <br>
    \${(10==10) or (20!=30)} : ${(10==10) or (20!=30)} <br>

    \${!(20==10)} : ${!(20==10)} <br>
    \${not(20==10)} : ${not(20==10)} <br>

    \${!(20!=10)} : ${!(20!=10)} <br>
    \${not(20!=10)} : ${not(20!=10)} <br>

</h2>
</body>
</html>
