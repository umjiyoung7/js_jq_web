<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    int price = Integer.parseInt(request.getParameter("price"));
    int amount = Integer.parseInt(request.getParameter("amount"));
    int money = price * amount;

%>

가격 : <%= price%> <br>
수량 : <%=amount%> <br>
금액 : <%=money%>
</body>
</html>
