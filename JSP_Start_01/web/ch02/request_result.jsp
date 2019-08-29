<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.Map" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
</head>
<body>
<%
    //자료 저장 - request.setAttribute("변수명",값)
    // 자료 불러오기 - (바꿀자료형)request.getAttribute("변수명")
    Map<String, Object> map = (Map<String, Object>) request.getAttribute("map");
%>
이름:<%=map.get("name")%><br>
나이:<%=map.get("age")%><br>
성별:<%=map.get("gender")%><br>
취미:<%=map.get("hobby")%><br>
</body>
</html>