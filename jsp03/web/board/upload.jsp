<%--
  Created by IntelliJ IDEA.
  User: umjiy
  Date: 2019-07-28
  Time: 오후 5:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>upload</title>
</head>
<body>
<!-- 파일을 업로드할 때는 enctype="multipart/form-data" 속성이  꼭 명시되어야 함 -->
<h2>파일 업로드</h2>
<form name="form1" method="post" enctype="multipart/form-data"
      action="upload_result.jsp">
    이름 : <input type="text" name="name"><br>
    제목 : <input type="text" name="subject"><br>
    파일 1 : <input type="file" name="file1"><br>
    파일 2 : <input type="file" name="file2"><br>
    <input type="submit" value="업로드">
</form>
</body>
</html>

