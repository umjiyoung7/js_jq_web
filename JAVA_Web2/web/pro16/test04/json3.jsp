<%--
  Created by IntelliJ IDEA.
  User: umjiy
  Date: 2019-08-25
  Time: 오후 5:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"
isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>json3.jsp</title>
    <script  src="http://code.jquery.com/jquery-latest.min.js"></script>
    <script>
        $(function () {
            $("#checkJson").click(function () {
                var jsonStr = '{"name":"박지성","age":25,"gender":"남자","nickname":"날센돌이"}';
                var jsonObj = JSON.parse(jsonStr);
                var output = "회원 정보<br>";
                output += "=====<br>";
                output += "이름 : " + jsonObj.name+"<br>";
                output += "나이 : " + jsonObj.age+"<br>";
                output += "성별 : " + jsonObj.gender+"<br>";
                output += "별명 : " + jsonObj.nickname+"<br>";
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
