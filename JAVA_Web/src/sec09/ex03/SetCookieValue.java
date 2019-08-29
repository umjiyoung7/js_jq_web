package sec09.ex03;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.net.URLEncoder;
import java.util.Date;

//@WebServlet("/set")
public class SetCookieValue extends HttpServlet {
//    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//
//    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html; charset=utf-8");
        PrintWriter out = response.getWriter();
        Date d = new Date();
        Cookie c = new Cookie("cookieTest", URLEncoder.encode("jsp프로그래밍", "utf-8"));
//        c.setMaxAge(24*60*60); Persistence 쿠키
        c.setMaxAge(-1); // Session 쿠키
        response.addCookie(c);
        out.println("현재 시간 : " + d);
        out.println("현재 시간을 Cookie로 저장함");
    }
}
