//package sec03.ex03;
//
//import javax.servlet.ServletException;
//import javax.servlet.annotation.WebServlet;
//import javax.servlet.http.HttpServlet;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//import java.io.IOException;
//import java.io.PrintWriter;
//
//@WebServlet("/login5")
//public class LoginServlet5 extends HttpServlet {
//    public void init(){
//        System.out.println("login5 init 메서드 호출");
//    }
//    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        request.setCharacterEncoding("utf-8");
//        response.setContentType("text/html; charset=utf-8");
//        PrintWriter out = response.getWriter();
//        String id = request.getParameter("user_id");
//        String pw = request.getParameter("user_pw");
//        String address = request.getParameter("user_address");
//        System.out.println("아이디 : " + id);
//        System.out.println("비번 : " + pw);
//
//        String data = "<html>";
//        data += "<body>";
//        data += "아이디 : " + id;
//        data += "<br>";
//        data += "비번 : " + pw;
//        data += "<br>";
//        data += "주소 : " + address;
//        data += "</html>";
//        data += "</body>";
//        out.print(data);
//    }
//
////    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
////
////    }
//}
