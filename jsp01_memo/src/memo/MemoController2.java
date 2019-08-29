//package memo;
//
//import memo.dao.MemoDAO;
//import memo.dto.MemoDTO;
//
//import javax.servlet.RequestDispatcher;
//import javax.servlet.ServletException;
//import javax.servlet.annotation.WebServlet;
//import javax.servlet.http.HttpServlet;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//import java.io.IOException;
//import java.util.List;
//
//// url 과 class 를 연결시켜주는 코드  memo.jsp url 동일하게 …
//@WebServlet("/memo_servlet/*")
//public class MemoController2 extends HttpServlet {
//    private static final long serialVersionUID = 1L;
//
//    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws
//            ServletException, IOException {
//        MemoDAO dao = new MemoDAO(); //dao 객체 생성
//        // 사용자가 요청한 주소
//        String url = request.getRequestURL().toString();
//        if (url.indexOf("list.do") != -1) { // list.do 가 포함된 url 이면
//            List<MemoDTO> list = dao.listMemo(); //메모 목록이 리턴됨
//            request.setAttribute("list", list); //request 영역에 저장
//            String page = "/memo/memo_list.jsp"; //출력 페이지 지정
//            // 결과가 출력됨
//            RequestDispatcher rd = request.getRequestDispatcher(page);
//            rd.forward(request, response);
//        } else if (url.indexOf("insert.do") != -1) { // request.getParameter("변수명")
//            String writer = request.getParameter("writer");
//            String memo = request.getParameter("memo");
//            MemoDTO dto = new MemoDTO(writer, memo);
//            System.out.println(dto);
//            dao.insertMemo(dto);
//        } else if (url.indexOf("view.do") != -1) {
//            //클릭한 메모 번호를 저장
//            int idx = Integer.parseInt(request.getParameter("idx"));
//            MemoDTO dto = dao.viewMemo(idx); //메모 상세 내용이 리턴됨
//            request.setAttribute("dto", dto); //출력하기 전에 저장
//            String page = "/memo/memo_view.jsp"; //출력 페이지
//            // 출력 페이지로 화면이 바뀌면서 출력됨
//            RequestDispatcher rd = request.getRequestDispatcher(page);
//            rd.forward(request, response);
//        } else if (url.indexOf("update.do") != -1) {
//            int idx = Integer.parseInt(request.getParameter("idx")); //글번호
//            String writer = request.getParameter("writer"); //이름
//            String memo = request.getParameter("memo");//메모 내용
//            MemoDTO dto = new MemoDTO(); //3 개의 값을 dto 에 묶음
//            dto.setIdx(idx);
//            dto.setWriter(writer);
//            dto.setMemo(memo);
//            dao.updateMemo(dto); //레코드가 수정됨
//            response.sendRedirect("/memo/memo.jsp"); //목록이 갱신됨
//        } else if (url.indexOf("delete.do") != -1) {
//            //삭제할 메모 번호
//            int idx = Integer.parseInt(request.getParameter("idx"));
////            System.out.println("dddddd" + idx);
//            //레코드 삭제
//            dao.deleteMemo(idx);
//            // 메모 목록 페이지로 이동
//            response.sendRedirect("/memo/memo.jsp");
//        }
//    }
//
//    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws
//            ServletException, IOException {
//        doGet(request, response);
//    }
//
//}