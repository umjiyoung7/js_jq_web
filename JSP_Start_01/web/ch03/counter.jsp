<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="common.Util" %>
<%@ page import="java.util.Date" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
</head>
<body>
<%
    String count = Util.getCookie(request.getCookies(), "count");
    //카운트 쿠키값을 가져옴
    int intCount = 0;
    Date date = new Date(); //날짜 객체
    long now_time = date.getTime(); //현재 시간
    // out.println("현재 시간:"+now_time);
    String visitTime = Util.getCookie(request.getCookies(), "visit_time");
    //최근 방문시간 조회
    long visit_time = 0;
    if (visitTime != null && !visitTime.equals("")) { //첫방문이 아닌 경우
        visit_time = Long.parseLong(visitTime);
    }
    //Long.toString(숫자) 숫자를 스트링으로
    // Long.parseLong(스트링) 스트링을 숫자로
    if (count == null || count.equals("")) { //첫방문인 경우
        response.addCookie(new Cookie("count", "1")); //카운트를 1 로 설정
        response.addCookie(new Cookie("visit_time", Long.toString(now_time))); //첫 방문시간 저장
        out.println("첫방문을 환영합니다.");
    } else {
        long period = now_time - visit_time;
        intCount = Integer.parseInt(count); // 하루 동안 3 대신 24*60*60 변경하면됨.
        if (period > 3 * 1000) { //일정시간 경과 후 카운트를 올리기 위한 코드
            intCount++;             //쿠키 업데이트
            response.addCookie(new Cookie("count", Integer.toString(intCount))); //쿠키 업데이트
            response.addCookie(new Cookie("visit_time", Long.toString(now_time)));
        }
        out.println("방문횟수:" + intCount + "<br>");
        String counter = Integer.toString(intCount);
        for (int i = 0; i < counter.length(); i++) {
            String img = "<img src='../images/" + counter.charAt(i) + ".gif'>"; //각 자리수를 이미지로 출력
            out.println(img);
        }
    }
%>
</body>
</html>