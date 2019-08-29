<%--
  Created by IntelliJ IDEA.
  User: umjiy
  Date: 2019-08-23
  Time: 오후 7:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"
isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%
    request.setCharacterEncoding("utf-8");
%>
<html>
<head>
    <title>fnTest.jsp</title>
</head>
<body>
<c:set var="title1" value="hello world!"/>
<c:set var="title2" value="쇼핑몰 중심 JSP"/>
<c:set var="str1" value="중심"/>
<h2>여러 가지 문자열 함수 기능</h2>
title1="hello world"<br>
title2="쇼핑몰 중심 JSP"<br>
str1="중심"<br><br>

fn:length(title1)=${fn:length(title1)}<br>
fn:toUpperCase(title1)=${fn:toUpperCase(title1)}<br>
fn:toLowerCase(title1)=${fn:toLowerCase(title1)}<br><br>

fn:substring(title1,3,6)=${fn:substring(title1,3,6)}<br>
fn:trim(title1)=${fn:trim(title1)}<br>
fn:replace(title1, " ", "/")=${fn:replace(title1, " ", "/")}<br><br>

fn:indexOf(title2, str1)=${fn:indexOf(title2, str1)}<br>
fn:contains(title1, str1)=${fn:contains(title1, str1)}<br>
fn:contains(title2, str1)=${fn:contains(title2, str1)}<br>
</body>
</html>
