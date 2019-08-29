<%--
  Created by IntelliJ IDEA.
  User: umjiy
  Date: 2019-08-25
  Time: 오후 5:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"
isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>json1.jsp</title>
    <script  src="http://code.jquery.com/jquery-latest.min.js"></script>
    <script>
        $(function () {
            $("#checkJson").click(function () {
                var jsonStr = '{"name": ["홍길동", "이순신", "임꺽정"]}';
                var jsonInfo = JSON.parse(jsonStr);
                var output = "회원 이름<br>";
                output += "=====<br>";
                for (var i in jsonInfo.name) {
                    output += jsonInfo.name[i] + "<br>";
                }
                $("#output").html(output);
            });
        });
    </script>
</head>
<body>
<a id="checkJson" style="cursor:pointer">출력</a><br><br>
<div id="output"></div>

</body>
</html>
