<%--
  Created by IntelliJ IDEA.
  User: umjiy
  Date: 2019-07-25
  Time: 오후 4:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>memo_view</title>
    <script src="../include/jquery-3.4.1.min.js"></script>
    <script>
        $(function () {
            $("#btnDelete").click(function () {
                if(confirm("삭제하시겠습니까?")) {
                    document.form1.action = "/memo_servlet/delete.do";
                    document.form1.submit();
                }
            });
            $("#btnUpdate").click(function () {
                var writer = $("#writer");
                var memo = $("#memo");
                if(writer.val() == "") {
                    alert("이름을 입력하세요.");
                    writer.focus();
                    return;
                }
                if(memo.val() == "") {
                    alert("메모를 입력하세요.");
                    memo.focus();
                    return;
                }
                document.form1.action = "/memo_servlet/update.do";
                document.form1.submit();
            });
        });
    </script>
</head>
<body>
<h2>메모 수정</h2>
<form name="form1" id="form1" method="post">
    <table border="1" style="width:350px;">
        <tr>
            <td>이름</td>
            <td><input type="text" name="writer" id="writer" value="${dto.writer}"></td>
        </tr>
        <tr>
            <td>메모</td>
            <td><input type="text" name="memo" id="memo" value="${dto.memo}"></td>
        </tr>
        <tr align="center">
            <td colspan="2">
                <input type="hidden" name="idx" id="idx" value="${dto.idx}"></input>
                <input type="button" value="수정" id="btnUpdate">
                <input type="button" value="삭제" id="btnDelete">
            </td>
        </tr>
    </table>
</form>
</body>
</html>
