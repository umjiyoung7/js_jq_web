<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
</head>
<body>
<%
    // 세션 변수에 값이 입력됨(사용자 단위로 만들어지는 변수, 모든 페이지에서 사용 가능)
    session.setAttribute("name", "김철수");
    session.setAttribute("age", 20);

// request.setAttribute("name", "김철수");
// request.setAttribute("age", 20);
// 페이지를 이동시킴  : 기존페이지 정보 삭제하고 다른 페이지로 이동함.
// forword 하면 request, response 정보가 유지됨
// sendRedirect : 처리가 다 끝나서 다른 새로운 페이지로 넘어감

//response.sendRedirect("session_result.jsp");
//http://localhost/ch02/session_result.jsp

RequestDispatcher rd=
 request.getRequestDispatcher("/ch02/session_result.jsp");
 rd.forward(request,response);
//    http://localhost/ch02/session.jsp

%>
</body>
</html>