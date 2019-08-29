<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Insert title here</title></head>
<body>
<h2>설문조사</h2>
<h3>${dto.question}</h3>
<form method="post" action="/survey_servlet/insert.do">
    <input type="radio" name="num" value="1" checked>${dto.ans1}<br>
    <input type="radio" name="num" value="2">${dto.ans2}<br>
    <input type="radio" name="num" value="3">${dto.ans3}<br>
    <input type="radio" name="num" value="4">${dto.ans4}<br>
    <input type="hidden" name="survey_idx" value="${dto.survey_idx}">
<%--    <input type="submit" value="투표">--%>
    <br>
    <br>
    <h3>${dto2.question}</h3>
    <input type="radio" name="num2" value="1" checked>${dto2.ans1}<br>
    <input type="radio" name="num2" value="2">${dto2.ans2}<br>
    <input type="radio" name="num2" value="3">${dto2.ans3}<br>
    <input type="radio" name="num2" value="4">${dto2.ans4}<br>
    <input type="hidden" name="survey_idx2" value="${dto2.survey_idx}">
    <input type="submit" value="투표">

</form>
</body>
</html>