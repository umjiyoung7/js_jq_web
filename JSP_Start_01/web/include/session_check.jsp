<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%
    //세션값을 읽어온 후
    String userid = (String) session.getAttribute("userid");
    if (userid == null) { //세션에 저장된 값이 없으면(로그인하지 않은 상태)
%>
<script> //자바스크립트 코드 영역
 alert ("먼저 로그인을 해주세요."); //메시지창 출력
     location.href="login.jsp"; //로그인 페이지로 이동
</script>
<%
    } //if 의 끝
 %>