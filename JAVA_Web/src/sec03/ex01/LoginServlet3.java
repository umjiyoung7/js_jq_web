package sec03.ex01;

import javax.servlet.Servlet;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/login3")
public class LoginServlet3 extends HttpServlet {
    public void init() throws ServletException {
        System.out.println("login3 init 메서드 호출");
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        String user_id = request.getParameter("user_id");
        String user_pw = request.getParameter("user_pw");
        System.out.println("아이디 : " + user_id);
        System.out.println("비밀번호 : " + user_pw);
        //http://localhost/login3 주소창
    }

//    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        request.setCharacterEncoding("utf-8");
//        String user_id = request.getParameter("user_id");
//        String user_pw = request.getParameter("user_pw");
//        System.out.println("아이디 : " + user_id);
//        System.out.println("비밀번호 : " + user_pw);
        //http://localhost/login3?user_id=lee&user_pw=1111 주소창
//    }
}
