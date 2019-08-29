<%--
  Created by IntelliJ IDEA.
  User: umjiy
  Date: 2019-07-24
  Time: 오후 1:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>ex04</title>
</head>
<body>
<%
    //세션변수에 값을 저장
    session.setAttribute("name", "김철수");
    session.setAttribute("age", 20);
    session.setAttribute("job", "dba");
    //1. 출력페이지의 정보를 분석하는 코드
    // RequestDispatcher rd
    // =request.getRequestDispatcher("ex04_result.jsp");
    // 출력페이지로 화면전환(주소는 안바뀌고 데이터가 전달됨)
    // rd.forward(request, response);

    //2. 주소가 변경됨(페이지에서 작업한 모든 내용들이 지워짐)
    response.sendRedirect("ex04_result.jsp");
    // 게시판 글등록 이후 목록 리스트로 가는 경우 사용
%>
</body>
</html>
