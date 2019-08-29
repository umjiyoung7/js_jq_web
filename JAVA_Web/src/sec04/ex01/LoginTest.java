//package sec04.ex01;
//
//import javax.servlet.ServletException;
//import javax.servlet.annotation.WebServlet;
//import javax.servlet.http.HttpServlet;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//import java.io.IOException;
//import java.io.PrintWriter;
//
//@WebServlet("/loginTest")
//public class LoginTest extends HttpServlet {
//    public void init() {
//        System.out.println("loginTest init call");
//    }
//    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        request.setCharacterEncoding("utf-8");
//        response.setContentType("text/html; charset=utf-8");
//        PrintWriter out = response.getWriter();
//        String id = request.getParameter("user_id");
//        String pw = request.getParameter("user_pw");
//
//        System.out.println("아이디 : " + id);
//        System.out.println("비번 : " + pw);
//
//        if (id != null && (id.length() != 0)) {
//            out.print("<html>");
//            out.print("<body>");
//            out.print(id + " 님!!! 로그인 함");
//            out.print("</body>");
//            out.print("</html>");
//        }else {
//            out.print("<html>");
//            out.print("<body>");
//            out.print("아이디, 비번 필수 입력");
//            out.print("<br>");
//            out.print("<a href='login3.html'>로그인 창으로 이동</a>");
//            out.print("</body>");
//            out.print("</html>");
//        }
//
//    }
//
////    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
////
////    }
//}
