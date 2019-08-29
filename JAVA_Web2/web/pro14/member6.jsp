<%--
  Created by IntelliJ IDEA.
  User: umjiy
  Date: 2019-08-22
  Time: 오후 3:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"
isELIgnored="false" %>
<%
    request.setCharacterEncoding("utf-8");
%>
<jsp:useBean id="m" class="sec14.ex02.MemberBean"/>
<jsp:setProperty name="m" property="*"/>
<jsp:useBean id="addr" class="sec14.ex02.Address"/>
<jsp:setProperty name="addr" property="city" value="서울"/>
<jsp:setProperty name="addr" property="zipcode" value="07654"/>
<%
    m.setAddr(addr);
%>
<html>
<head>
    <title>member6.jsp</title>
    <style>
        table {border: solid 1px black; align: center;}
        tr {border: solid 1px black; align: center;}
        th {border: solid 1px black; bgcolor: pink;}
        td {border: solid 1px black;}
        .d1 {width: 7%;}
        .d2 {width: 5%;}
    </style>
</head>
<body>
<table>
    <tr>
        <th class="d1"><b>아이디</b></th>
        <th class="d1"><b>비번</b></th>
        <th class="d2"><b>이름</b></th>
        <th class="d2"><b>이메일</b></th>
        <th class="d2"><b>도시</b></th>
        <th class="d2"><b>우편번호</b></th>
    </tr>
    <tr>
        <td>${m.id}</td>
        <td>${m.pwd}</td>
        <td>${m.name}</td>
        <td>${m.email}</td>
        <td><%=m.getAddr().getCity()%></td>
        <td><%=m.getAddr().getZipcode()%></td>
    </tr>
    <tr>
        <td>${m.id}</td>
        <td>${m.pwd}</td>
        <td>${m.name}</td>
        <td>${m.email}</td>
        <td>${m.addr.city}</td>
        <td>${m.addr.zipcode}</td>
    </tr>
</table>

</body>
</html>
