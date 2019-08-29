package ch02;

import member.MemberDAO;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.net.URLEncoder;

@WebServlet("/ch02_servlet/*") //url mapping
public class LoginController extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String url = request.getRequestURL().toString();
        if (url.contains("login.do")) {
            //login.jsp 에 입력한 id,pass 값을 읽어옴
            String id = request.getParameter("id");
            String pass = request.getParameter("pass");
            //dao 객체 생성
            MemberDAO dao = new MemberDAO();
            //로그인이 정확한지 체크하고 정확하면 이름이 넘어옴
            String name = dao.loginCheck(id, pass);
            System.out.println(name);

            String message = ""; //로그인 처리 결과 메시지를 저장할 변수
            String page = ""; //이동할 페이지 주소를 저장할 변수
            if (name != null) { //로그인 성공
                message = name + "님 환영합니다.";
                page = "/ch02/login_success.jsp";
                HttpSession session = request.getSession(); //세션 객체 생성
                session.setAttribute("userid", id); //세션 변수 저장
                session.setAttribute("message", message);
            } else { //로그인 실패
                message = "아이디 또는 비밀번호가 일치하지 않습니다.";
                // URLEncoder.encode("인코딩할문자열", 인코딩형식)
                page = "/ch02/login.jsp?message="
                        + URLEncoder.encode(message, "utf-8");
            }
            response.sendRedirect(page); //페이지 이동
        } else if (url.contains("logout.do")) { //로그아웃 처리
            // session 객체 생성
            HttpSession session = request.getSession();
            //세션에 저장된 모든 값을 지움
            session.invalidate();
            //로그인 페이지로 이동
            String message = "로그아웃되었습니다.";
            response.sendRedirect("/ch02/login.jsp?message=" + URLEncoder.encode(message, "utf-8"));
        }
    } //doGet

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws
            ServletException, IOException {
        doGet(request, response);
    }

}
