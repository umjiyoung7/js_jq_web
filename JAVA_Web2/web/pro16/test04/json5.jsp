<%--
  Created by IntelliJ IDEA.
  User: umjiy
  Date: 2019-08-25
  Time: 오후 6:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"
isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<html>
<head>
    <title>json5.jsp</title>
    <script  src="http://code.jquery.com/jquery-latest.min.js"></script>
    <script>
        $(function () {
            $("#checkJson").click(function () {
                var _jsonInfo = '{"name":"박지성","age":"25","gender":"남자","nickname":"날센돌이"}';
                $.ajax({
                    type:"post",
                    async:false,
                    url:"${contextPath}/json",
                    data:{jsonInfo: _jsonInfo},
                    success:function (data, textStatus) {

                    },
                    error:function (data,textStatus) {
                        alert("에러 발생");
                    },
                    complete:function (data,textStatus) {

                    }
                });
            });
        });
    </script>
</head>
<body>
<a id="checkJson" style="cursor:pointer">전송</a><br><br>
<div id="output"></div>
</body>
</html>
