package sec04.ex01;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/loginTest2")
public class LoginTest2 extends HttpServlet {
    public void init(){
        System.out.println("init 메서드 호출");
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        response.setContentType("text/html; charset=utf-8");
        PrintWriter out = response.getWriter();
        String id = request.getParameter("user_id");
        String pw = request.getParameter("user_pw");

        System.out.println("아이디 : " + id);
        System.out.println("패스워드 : " + pw);

        if (id != null && (id.length() != 0)) {
            if (id.equals("admin")) {
                out.print("<html>");
                out.print("<body>");
                out.print("<font size='12'>관리자로 로그인 함</font>");
                out.print("<br>");
                out.print("<input type=button value='회원 정보 수정'>");
                out.print("<input type=button value='회원 정보 삭제'>");
                out.print("</body>");
                out.print("</html>");
            }else{
                out.print("<html>");
                out.print("<body>");
                out.print(id + " 님 로그인 함");
                out.print("</body>");
                out.print("</html>");
            }
        }else{
            out.print("<html>");
            out.print("<body>");
            out.print("아이디, 비번 필수 입력!!!");
            out.print("<br>");
            out.print("<a href='login3.html'>로그인 창으로 이동</a>");
            out.print("</body>");
            out.print("</html>");
        }
    }

//    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//
//    }
}
