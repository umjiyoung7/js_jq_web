<%--
  Created by IntelliJ IDEA.
  User: umjiy
  Date: 2019-07-28
  Time: 오후 11:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <title>edit</title>
    <script src="/include/jquery-3.4.1.min.js"></script>
    <script>
        $(function () {
            $("#btnUpdate").on("click", function () {
                document.form1.action="/board_servlet/update.do";
                document.form1.submit();
            });
            $("#btnDelete").on("click", function () {
                if (confirm("삭제하시겠습니까?")) {
                    document.form1.action = "/board_servlet/delete.do";
                    document.form1.submit();
                }
            });
        });
    </script>
</head>
<body>
<h2>게시물 수정</h2>
<form action="" name="form1" method="post" enctype="multipart/form-data">
    <table border="1" width="700px">
        <tr>
            <td>이름</td>
            <td><input type="text" name="writer" id="writer" value="${dto.writer}"></td>
        </tr>
        <tr>
            <td>제목</td>
            <td><input type="text" name="subject" id="subject" size="60" value="${dto.subject}"></td>
        </tr>
        <tr>
            <td>본문</td>
            <td><textarea name="content" id="content" cols="60" rows="5">${dto.content}</textarea></td>
        </tr>
        <tr>
            <td>첨부파일</td>
            <td>
                <c:if test="${dto.filesize > 0}">
                    ${dto.filename} (${dto.filesize / 1024} KB <br>
                </c:if>
                <input type="file" name="file1">
            </td>
        </tr>
        <tr>
            <td>비밀번호</td>
            <td><input type="password" name="passwd" id="passwd">
                <c:if test="${param.pwd_error == 'y'}">
                    <span style="color:red;">비밀번호가 일치하지 않습니다.</span>
                </c:if>
            </td>
        </tr>
        <tr>
            <td colspan="2" align="center">
                <input type="hidden" name="num" value="${dto.num}">
                <input type="button" value="수정" id="btnUpdate">
                <input type="button" value="삭제" id="btnDelete">
            </td>
        </tr>
    </table>
</form>
</body>
</html>
