<%--
  Created by IntelliJ IDEA.
  User: umjiy
  Date: 2019-07-28
  Time: 오후 10:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <title>list</title>
    <script src="/include/jquery-3.4.1.min.js"></script>
    <script>
        $(function () {
            $("#btnWrite").click(function () {
                location.href = "/board/write.jsp";
            });
        });
    </script>
</head>
<body>
<h2>게시판</h2>
<form action="/board_servlet/search.do" name="form1" method="post">
    <select name="search_option" id="">
        <option value="writer">이름</option>
        <option value="subject">제목</option>
        <option value="content">본문</option>
        <option value="all">이름+제목+본문</option>
    </select>
    <input type="text" name="keyword">
    <input type="submit" value="조회">
</form>

<button id="btnWrite">글쓰기</button>
<table border="1" width="900px">
    <tr>
        <th>번호</th>
        <th>이름</th>
        <th>제목</th>
        <th>날짜</th>
        <th>조회수</th>
        <th>첨부파일</th>
        <th>다운로드</th>
    </tr>

<c:forEach var="dto" items="${list}">
    <tr>
        <td>${dto.num}</td>
        <td>${dto.writer}</td>
        <td>
            <c:forEach var="i" begin="1" end="${dto.re_level}">
                &nbsp;&nbsp;
            </c:forEach>
            <a href="/board_servlet/view.do?num=${dto.num}">${dto.subject}</a>
            <c:if test="${dto.comment_count > 0}">
                <span style="color:red;">(${dto.comment_count})</span>
            </c:if>
        </td>
        <td>${dto.reg_date}</td>
        <td>${dto.readcount}</td>
        <td>
            <c:if test="${dto.filesize > 0}">
                <a href="/board_servlet/download.do?num=${dto.num}">
                    <img src="/images/file.gif" alt="">
                </a>
            </c:if>
        </td>
        <td>${dto.down}</td>
    </tr>
</c:forEach>
</table>

</body>
</html>
