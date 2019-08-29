<%--
  Created by IntelliJ IDEA.
  User: umjiy
  Date: 2019-08-15
  Time: 오후 3:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    request.setCharacterEncoding("utf-8");
    int score = Integer.parseInt(request.getParameter("score"));
%>
<html>
<head>
    <title>scoreTest.jsp</title>
</head>
<body>
<h1>시험 점수 <%=score%>점</h1><br>
<%
    if (score >= 90 && score<=100) {
%>
<h1>A</h1>
<%
}else if(score>=80 && score<90){
%>
<h1>B</h1>
<%
}else if(score>=70 && score<80){
%>
<h1>C</h1>
<%
}else if(score>=60 && score<70){
%>
<h1>D</h1>
<%
}else if(score>=0 && score<60){
%>
<h1>F</h1>
<%
}else{
%>
<h1>점수는 0-100까지 입력 가능</h1>
<h1>점수를 다시 입력해주십시오</h1>
<%
    }
%>
<br>
<a href="scoreTest.html">시험점수입력</a>
</body>
</html>
