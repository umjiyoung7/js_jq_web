<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
    <script src="../include/jquery-3.4.1.min.js"></script> <!-- jquery 로딩 -->
    <script>
        $(function () { //페이지가 로딩된 후 자동으로 실행되는 함수
            $("#btnDelete").click(function () { //id 가 btnDelete 인 버튼을 누르면
                if (confirm("삭제하시겠습니까?")) { //사용자의 확인을 받는 함수
                    // 폼데이터를 제출할 주소 지정
                    document.form1.action = "/memo_servlet/delete.do";
                    //폼데이터를 서버에 제출
                    document.form1.submit();
                }
            });
            $("#btnUpdate").click(function () { //수정 버튼을 클릭하면 실행되는 함수
                var writer = $("#writer"); //id 가 writer 인 태그
                var memo = $("#memo");
                if (writer.val() == "") { //태그.val() 태그에 입력한 값
                    alert("이름을 입력하세요.");
                    writer.focus(); //태그.focus() 태그에 입력포커스를 설정함
                    return; //함수를 종료시킴
                }
                if (memo.val() == "") {
                    alert("메모를 입력하세요.");
                    memo.focus();
                    return;
                }
                document.form1.action = "/memo_servlet/update.do"; //폼데이터 제출 주소
                document.form1.submit(); //폼데이터를 서버에 제출
            });
        });     </script>
</head>
<body>
<h2>메모 수정</h2>
<form name="form1" id="form1" method="post">
    <table border="1" style="width:350px;">
        <tr>
            <td>이름</td>
            <td><input type="text" name="writer" id="writer" value="${dto.writer}"></td>
        </tr>
        <tr>
            <td>메모</td>
            <td><input type="text" name="memo" id="memo" value="${dto.memo}"></td>
        </tr>
        <tr align="center">
            <td colspan="2"><input type="hidden" name="idx" id="idx" value="${dto.idx}">
                <input type="button" value="수정" id="btnUpdate">
                <input type="button" value="삭제" id="btnDelete"></td>
        </tr>
    </table>
</form>
</body>
</html>