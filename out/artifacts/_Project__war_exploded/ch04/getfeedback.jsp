<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <%
        // 한글 처리
        request.setCharacterEncoding("utf-8"); //주석 처리하면 한글 깨짐
        String feedback =request.getParameter("feedback");

        // 태그 무시(보안 때문에 사용)
        feedback = feedback.replace("<", "&lt");
        feedback = feedback.replace(">", "&gt");
        feedback = feedback.replace("\n", "<br>");
        feedback = feedback.replace("  ", "&nbsp&nbsp"); // 한칸은 됨. 그 이상은 하나로 취급함

    %>
</head>
<body>
고객의 의견 : <%=feedback%><p></p>
고객의 의견2 : <%=request.getParameter("feedback2")%>
</body>
</html>
