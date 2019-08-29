<%--
  Created by IntelliJ IDEA.
  User: umjiy
  Date: 2019-07-24
  Time: 오후 4:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script src="/include/jquery-3.4.1.min.js"></script>
    <script>
        $(function () {
            $.getJSON("item.json", function (data, textStatus) {
                console.log(data);
                console.log("textStatus : " + textStatus);
                $("#fruit").append("<tr><td>id</td><td>과일</td><td>가격</td><td>비고</td></tr>");
                $.each(data, function () {
                    $("#fruit").append("<tr><td>" + this.id + "</td>" + "<td>" + this.name + "</td>"
                        + "<td>" + this.price + "</td>" + "<td>" + this.description + "</td></tr>");
                });
            });
        });
    </script>
</head>
<body>
<table id="fruit" border="1"></table>
</body>
</html>
