<%--
  Created by IntelliJ IDEA.
  User: umjiy
  Date: 2019-08-22
  Time: 오후 1:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"
isELIgnored="false" %>
<html>
<head>
    <title>elTest3.jsp</title>
</head>
<body>
<h2>여러 가지 비교 연산자</h2>
<h3>
    \${10==10} : ${10==10} <br>
    \${10 eq 10} : ${10 eq 10} <br>
    \${"hello" == "hello"} : ${"hello" == "hello"} <br>
    \${"hello" eq "hello"} : ${"hello" eq "hello"} <br>

    \${20 != 10} : ${20 != 10} <br>
    \${20 ne 10} : ${20 ne 10} <br>

    \${"hello" != "apple"} : ${"hello" != "apple"} <br>
    \${"hello" ne "apple"} : ${"hello" ne "apple"} <br>

    \${10 < 10} : ${10 < 10} <br>
    \${10 lt 10} : ${10 lt 10} <br>

    \${100 > 10} : ${100 > 10} <br>
    \${100 gt 10} : ${100 > 10} <br>

    \${100 <= 10} : ${100 <= 10} <br>
    \${100 le 10} : ${100 le 10} <br>

    \${100 >= 10} : ${100 >= 10} <br>
    \${100 gt 10} : ${100 gt 10} <br>


</h3>
</body>
</html>
