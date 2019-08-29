<%--
  Created by IntelliJ IDEA.
  User: umjiy
  Date: 2019-07-29
  Time: 오전 9:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>index</title>
    <script src="/include/jquery-3.4.1.min.js"></script>
    <script>
        $(function () {
            list("1");
        });

        function list(page) {
            $.ajax({
                url: "/page_servlet/list.do", data: "curPage=" + page,
                success: function (result) {
                    $("#result").html(result);
                }
            });
        }
    </script>
</head>
<body>
<h2>페이지 나누기</h2>
<div id="result"></div>
</body>
</html>
