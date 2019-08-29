<%--
  Created by IntelliJ IDEA.
  User: umjiy
  Date: 2019-08-22
  Time: 오후 1:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"
isELIgnored="false" %>
<html>
<head>
    <title>elTest1.jsp</title>
</head>
<body>
<h1>표현 언어로 여러 가지 데이터 출력하기</h1>
<h1>
    \${100} : ${100}<br>
    \${"안녕하세요"} : ${"안녕하세요"}<br>
    \${10+1} : ${10+1}<br>
    \${"10" + 1} : ${"10" + 1}<br>
    \${null + 10} : ${null + 10}<br>
<%--    ${null + 10} -> 10--%>
<%--    \${"안녕" + 11} : ${"안녕" + 11}<br>--%>
<%--    \${"hello" + "world"} : ${"hello" + "world"}<br>--%>
<%--    22행, 23행 -> 500 - 내부 서버 오류 발생--%>
</h1>
</body>
</html>
