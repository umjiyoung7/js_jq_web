<%--
  Created by IntelliJ IDEA.
  User: umjiy
  Date: 2019-08-25
  Time: 오후 5:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"
isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>json2</title>
    <script  src="http://code.jquery.com/jquery-latest.min.js"></script>
    <script>
        $(function () {
            $("#checkJson").click(function () {
                var jsonStr = '{"age": [22,33,44]}';
                var jsonInfo = JSON.parse(jsonStr);
                var output = "회원 나이<br>";
                output += "=====<br>";

                for (var i in jsonInfo.age) {
                    output += jsonInfo.age[i] + "<br>";
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
