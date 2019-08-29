<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
</head>
<body>
<%
    //application 서버 변수(모든 사용자가 같은 값을 공유함)
    // 개발디렉토리가 아닌 실제 서비스가 이루어지는 배포 디렉토리
    String path = application.getRealPath("/");

//    jsp 의 실제 서비스 경로 : C:\[Project]\JSP_Start_01\out\artifacts\JSP_Start_01_war_exploded\
%>
jsp 의 실제 서비스 경로 : <%=path%>
</body>
</html>