<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    String cars = request.getParameter("cars");
    String name = "";
    switch (cars){
        case "bmw":
            name = "BMW";
            break;
        case "benz":
            name = "Benz";
            break;
        case "hyundai":
            name = "현대";
            break;
        case "kai":
            name = "기아아";
            break;
    }
%>
선택한 차량 : <%= name%>
</body>
</html>

