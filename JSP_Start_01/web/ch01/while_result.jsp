<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Insert title here</title></head>
<body>
<% //서블릿 클래스에서 보낸 값을 읽음
//    request.getAttribute("변수명")
    String result = (String)request.getAttribute("result");
    out.println(result);
%>
</body>
</html>