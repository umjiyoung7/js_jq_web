<!-- 페이지 지시어(page directive) -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!-- test.jsp
확장자가 jsp인 파일 Java Server Pages
html 코드 안에 자바 코드가 삽입된 코드
-->
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Insert title here</title>
</head>
<body>
<h1>hello</h1>
<h2>문자열 테스트</h2>
<h3>문자열 테스트</h3>
<h4>문자열 테스트</h4>
<h5>문자열 테스트</h5>
<h6>문자열 테스트</h6>
<% //자바 코드 영역
//반복문 for( 초기값; 조건식; 증가감소식 )
// int i=1;   정수변수 i에 1을 대입
// i++  : 변수 i의 값을 1증가시킴
    for(int i=1; i<=6; i++) {
        //반복처리되는 부분
        // 문자열 + 숫자 => 숫자를 문자열로 바꾼 후 연결함
        out.println("<h"+i+">문자열 테스트</h"+i+">");
    }
%>
</body>
</html>
