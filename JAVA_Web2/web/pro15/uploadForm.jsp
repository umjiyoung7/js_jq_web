<%--
  Created by IntelliJ IDEA.
  User: umjiy
  Date: 2019-08-24
  Time: 오후 4:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"
isELIgnored="false" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<%
    request.setCharacterEncoding("utf-8");
%>
<html>
<head>
    <title>uploadForm.jsp</title>
</head>
<body>
<form action="${contextPath}/upload.do" method="post" enctype="multipart/form-data">
    파일1 : <input type="file" name="file1"><br>
    파일2 : <input type="file" name="file2"><br>
    파라미터1 : <input type="text" name="param1"><br>
    파라미터2 : <input type="text" name="param2"><br>
    파라미터3 : <input type="text" name="param3"><br>
    <input type="submit" value="업로드">
</form>
</body>
</html>
