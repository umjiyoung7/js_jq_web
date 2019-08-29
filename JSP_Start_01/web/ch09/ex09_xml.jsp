<%--
  Created by IntelliJ IDEA.
  User: umjiy
  Date: 2019-07-28
  Time: 오후 5:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
</head>
<body>
<x:parse var="xmldata">
    <items> <!-- 루트노드 -->
        <item>
            <model>Galaxy</model>
            <company>SKT</company>
            <product>Samsung</product>
        </item>
        <item>
            <model>Vega LTE</model>
            <company>SKT</company>
            <product>unKnown</product>
        </item>
        <item>
            <model>IPhone</model>
            <company>KT</company>
            <product>Apple</product>
        </item>
    </items>
</x:parse>
<table border="1">
    <tr align="center">
        <th>모델</th>
        <th>통신사</th>
        <th>제조사</th>
    </tr>
    <x:forEach select="$xmldata//item">
        <tr>
            <td><x:out select="./model" /></td>
            <td><x:out select="./company" /></td>
            <td><x:out select="./product" /></td>
        </tr>
    </x:forEach>
</table>
</body>
</html>
