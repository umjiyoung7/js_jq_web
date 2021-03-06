<%--
  Created by IntelliJ IDEA.
  User: umjiy
  Date: 2019-07-28
  Time: 오후 11:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>write</title>
    <script src="/include/jquery-3.4.1.min.js"></script>
    <script>
        $(function () {
            $("#btnSave").on("click", function () {
                var writer = $("#writer").val();
                var subject = $("#subject").val();
                var content = $("#content").val();
                var passwd = $("#passwd").val();
                if (writer == "") {
                    alert("이름을 입력하세요.");
                    $("#writer").focus();
                    return;
                }
                if (subject == "") {
                    alert("제목을 입력하세요.");
                    $("#subject").focus();
                    return;
                }
                if (content == "") {
                    alert("내용을 입력하세요.");
                    $("#content").focus();
                    return;
                }
                if (passwd == "") {
                    alert("비밀번호를 입력하세요.");
                    $("#passwd").focus();
                    return;
                }
                document.form1.submit();
            });
        });
    </script>
</head>
<body>
<h2>글쓰기</h2>
<form name="form1" method="post" action="/board_servlet/insert.do"
      enctype="multipart/form-data">
    <table border="1" width="700px">
        <tr>
            <td>이름</td>
            <td><input type="text" name="writer" id="writer"></td>
        </tr>
        <tr>
            <td>제목</td>
            <td><input type="text" name="subject" id="subject" size="60"></td>
        </tr>
        <tr>
            <td>본문</td>
            <td><textarea rows="5" cols="60" name="content" id="content"></textarea></td>
        </tr>
        <tr>
            <td>첨부파일</td>
            <td><input type="file" name="file1"></td>
        </tr>
        <tr>
            <td>비밀번호</td>
            <td><input type="password" name="passwd" id="passwd"></td>
        </tr>
        <tr>
            <td colspan="2" align="center">
                <input type="button" value="확인" id="btnSave"></td>
        </tr>
    </table>
</form>

</body>
</html>
