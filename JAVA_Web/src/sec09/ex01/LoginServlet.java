//package sec09.ex01;
//
//import javax.servlet.ServletException;
//import javax.servlet.annotation.WebServlet;
//import javax.servlet.http.HttpServlet;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//import java.io.IOException;
//import java.io.PrintWriter;
//
////@WebServlet("/login")
//public class LoginServlet extends HttpServlet {
//    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        request.setCharacterEncoding("utf-8");
//        response.setContentType("text/html; charset=utf-8");
//        PrintWriter out = response.getWriter();
//        String user_id = request.getParameter("user_id");
//        String user_pw = request.getParameter("user_pw");
//        String user_address = request.getParameter("user_address");
//        String user_email = request.getParameter("user_email");
//        String user_hp = request.getParameter("user_hp");
//
//        String data = "안녕하세요!<br> 로그인하셨습니다.<br><br>";
//        data += "<html><body>";
//        data += "아이디 : " + user_id;
//        data += "<br>";
//        data += "비번 : " + user_pw;
//        data += "<br>";
//        data += "주소 : " + user_address;
//        data += "<br>";
//        data += "이메일 : " + user_email;
//        data += "<br>";
//        data += "휴대전화 : " + user_hp;
//        data += "</body></html>";
//        out.print(data);
//    }
//}
