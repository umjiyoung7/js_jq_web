<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.ArrayList" %>
<%--
  Created by IntelliJ IDEA.
  User: umjiy
  Date: 2019-07-24
  Time: 오후 1:53
  To change this template use File | Settings | File Templates.
--%>
<html>
<head>
    <title>ex05</title>
</head>
<body>
<%
    ArrayList<String> items = new ArrayList<>();
    items.add("오렌지");
    items.add("사과");
    items.add("포도");
    items.add("레몬");

    request.setAttribute("items", items);

//    RequestDispatcher rd = request.getRequestDispatcher("ex05_result.jsp");
//    rd.forward(request,response);

    /*위는 아래와 동일함.
     <jsp:forward page="ex05_result.jsp"></jsp:forward> */
%>
<%--<jsp:forward page="ex05_result.jsp"></jsp:forward>--%>
<%--<c:forEach var="fruit" items="${items}">--%>
<%--    ${fruit}<br>--%>
<%--</c:forEach>--%>
<%--<jsp:forward page="ex05_resultb.jsp"></jsp:forward>--%>

<jsp:forward page="ex05_result.jsp"></jsp:forward>
</body>
</html>
