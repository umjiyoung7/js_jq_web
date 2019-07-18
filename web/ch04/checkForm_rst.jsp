<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%

    // 문자열의 인코딩 방식을 변경함(utf-8)
    request.setCharacterEncoding("utf-8");
    /*String fruits 배열로 받는다.*/
    String[] fruits = request.getParameterValues("fruits");
    if (fruits != null){
        for(String item : fruits){
            out.println(item+"<br>");
        }

    } else {
        out.println("선택한 내용이 없습니다.");
    }
%>
</body>
</html>
