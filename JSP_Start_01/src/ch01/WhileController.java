package ch01;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/ch01_servlet/while.do") //url mapping 최신방식 기존은 web.xml 기술함.
public class WhileController extends HttpServlet {
    private static final long serialVersionUID = 1L;     //get 방식 호출

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("++++++ >>>>>>>>>>>>>>>>>>");         //폼에서 입력한 값
        int dan = 5;
        if (request.getParameter("dan") != null) {
            dan = Integer.parseInt(request.getParameter("dan"));
        }
            String result = ""; //결과값
            int i = 1;
            while (i <= 9) {
                result += dan + "x" + i + "=" + dan * i + "<br>";
                i++;
            }
            System.out.println("결과:" + result);
            //결과값을 저장한 후 while_result.jsp 로 넘겨서 출력시키는 코드
            // request.setAttribute("변수명", 값)
            request.setAttribute("result", result);
            // getRequestDispatcher(url) url 의 정보를 분석
            RequestDispatcher rd = request.getRequestDispatcher("/ch01/while_result.jsp");
            // 지정된 url 로 화면 전환  (데이터도 함께 전달됨)
            rd.forward(request, response);
        }



    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}