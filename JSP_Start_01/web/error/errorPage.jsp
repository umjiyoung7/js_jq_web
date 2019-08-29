<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>

<!--
에러가 발생시 띄우게 되는 페이지에는 page 지시자의 isErrorpage = "true"로 지정한다.
지정하지 않으면 default가 false이기 때문에 에러페이지로 인식하지 않는다.

isErrorPage를 true로 지정하면 exception 객체를 이용할 수 있게 된다.
ex) exception.getMessage();
-->

<%@page isErrorPage="true" %>

<!--
에러 코드 200번은 정상 페이지라는 의미인데, 가끔 자동으로 500 코드로 세팅되는 경우가 있어
현재 에러 페이지는 정상적인 페이지다라는 세팅을 해주기 위해
response.setStatus(200); 을 지정해 준다.
-->

<%
    response.setStatus(200);
%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Insert title here</title>
</head>

에러페이지입니다. 에러 내용은 <%=exception.getMessage() %>입니다.<br/>


