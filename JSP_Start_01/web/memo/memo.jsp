<%--
  Created by IntelliJ IDEA.
  User: umjiy
  Date: 2019-07-25
  Time: 오후 2:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>memo</title>
    <script src="../include/jquery-3.4.1.min.js"></script>
    <script>
        $(function () {
            list();
            $("#btnSave").click(function () {
                insert();
            });
        });

        function list() {
            $.ajax({
                url: "/memo_servlet/list.do",
                success: function (result) {
                    $("#result").html(result);
                }
            });
        }

        function insert() {
            var writer = $("#writer").val();
            var memo = $("#memo").val();
            var param = "writer=" + writer + "memo=" + memo;

            $.ajax({
                type: "post",
                url: "/memo_servlet/insert.do",
                data: param,
                success: function () {
                    list();
                    $("#writer").val("");
                    $("#memo").val("");
                }
            });
        }
    </script>
</head>
<body>
<h2>한줄메모장</h2>
이름 : <input type="text" id="writer" size="10"><br>
메모 : <input type="text" id="memo" size="40">
<input type="button" id="btnSave" value="확인">
<div id="result"></div>
</body>
</html>
