<%--
  Created by IntelliJ IDEA.
  User: umjiy
  Date: 2019-07-28
  Time: 오후 11:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <title>comment_list</title>
</head>
<body>
<table border="1" width="700px">
    <c:forEach var="row" items="${list}">
        <tr>
            <td>
                    ${row.writer}
                        ( <fmt:formatDate value="${row.reg_date}"
                                                    pattern="yyyy-MM-dd hh:mm:ss"/>)<br>
                            ${row.content}
            </td>
        </tr>
    </c:forEach>
</table>

</body>
</html>
