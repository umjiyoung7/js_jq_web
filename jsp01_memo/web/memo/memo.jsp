<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>     <!-- jquery 라이브러리 로딩 -->
    <script src="../include/jquery-3.4.1.min.js"></script>
    <script>
        $(function () {
        //페이지 로딩이 끝난 후 자동으로 실행되는 함수
        list();
        // 저장로직 추가
        $("#btnSave").click(function () {
            insert();
        });
    });

    //메모 목록 갱신 함수
    function list() {
        //백그라운드 작업으로 메모 목록을 div에 출력함
        $.ajax({
            url: "/memo_servlet/list.do", success: function (result) {
                $("#result").html(result);
            }
        });
    }

    //메모 추가 함수
    function insert() {
        var writer = $("#writer").val();
        //id가 writer인 태그에 입력한 값을 변수에 저장
        var memo = $("#memo").val();
        var param = "writer=" + writer + "&memo=" + memo;
        //입력할 내용을 쿼리스트링으로 만들어서 전 달
        // writer=kim&memo=메모...
        $.ajax({
            type: "post", url: "/memo_servlet/insert.do",
            data: param, success: function () {
                //콜백함수(서버에서 처리가 완료된 후 실행되는 코드)
                // list (); //메모 목록이 갱신됨
                $("#writer").val(""); //태그에 입력한 내용을 지움
                $("#memo").val("");
            }
        });
    }


    </script>
</head>
<body>
<h2>한줄메모장</h2>
<!--  저장로직 추가 입력시 필요 -->
이름 : <input type="text" id="writer" size="10"><br>
메모 : <input type="text" id="memo" size="40">
<input type="button" id="btnSave" value="확인">

<div id="result"><!-- 메모 목록 출력 영역 --></div>
</body>
</html>