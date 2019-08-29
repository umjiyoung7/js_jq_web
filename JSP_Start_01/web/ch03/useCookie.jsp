<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
    <%@ include file="/include/header.jsp" %>
</head>
<body>
<%
    //자바 코드로 쿠키값을 출력하는 방법
    Cookie[] cookies = request.getCookies(); //저장된 쿠키를 배열로 받아옴
    if (cookies != null) { //쿠키변수가 존재하면
        for (int i = 0; i < cookies.length; i++) {
            if (cookies[i].getName().equals("id")) { //쿠키변수 이름이 id 인 경우
                out.println(cookies[i].getValue() + "<br>"); //쿠키값을 출력함             }
            }
            for (int i = 0; i < cookies.length; i++) {
                if (cookies[i].getName().equals("pwd")) { //쿠키변수 이름이 pwd 인 경우
                    out.println(cookies[i].getValue() + "<br>"); //쿠키값을 출력함
                }
            }
        }
    }
%>
아이디 : ${cookie.id.value}<br>   <!-- EL(표현언어)로 쿠키값을 출력하는 방법 -->
비번 : ${cookie.pwd.value}<br>

<a href="deleteCookie.jsp">쿠키 삭제</a><br>
<a href="editCookie.jsp">쿠키 변경</a>
</body>
</html>