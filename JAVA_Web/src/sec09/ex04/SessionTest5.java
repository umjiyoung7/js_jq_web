package sec09.ex04;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;

//@WebServlet("/login")
public class SessionTest5 extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doHandle(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doHandle(request, response);
    }

    public void doHandle(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException{
        request.setCharacterEncoding("utf-8");
        response.setContentType("text/html; charset=utf-8");
        PrintWriter out = response.getWriter();
        HttpSession session = request.getSession();
        String user_id = request.getParameter("user_id");
        String user_pw = request.getParameter("user_pw");
        if (session.isNew()) {
            if (user_id != null) {
                session.setAttribute("user_id", user_id);
                String url = response.encodeURL("login");
                out.println("<a href=" + url + ">로그인 상태 확인</a>");
            }else{
                out.print("<a href='login2.html'>다시 로그인 하세요!!!");
                session.invalidate();
            }
        }else{
            user_id = (String) session.getAttribute("user_id");
            if (user_id != null && user_id.length() != 0) {
                out.print("안녕하세요 " + user_id + "님!!!");
            }else{
                out.print("<a href='login2.html'>다시 로그인 하세요!!!</a>");
                session.invalidate();
            }
        }

    }
}
// 결과 url http://localhost/login;jsessionid=7848F5614D3C71D8571CCEC1303ACB03
