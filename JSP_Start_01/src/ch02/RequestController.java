package ch02;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

//class 와 url 매핑
@WebServlet("/ch02_servlet/request.do")
public class RequestController extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8"); //한글 인코딩 설정
        // 폼에서 입력한 값들을 받아옴   request.getParameter("변수명")
        String name = request.getParameter("name");
        // 폼 변수들은 스트링으로 넘어오므로 형변환이 필요함
        int age = Integer.parseInt(request.getParameter("age"));
        String gender = request.getParameter("gender");
        String hobby = request.getParameter("hobby");
        // HashMap 을 사용하지 않고 일일히 해서 보냅니다. 받는 쪽도 각각 받아야 함.
        //    request.setAttribute("name", name);
        //    request.setAttribute("age", age);
        //    request.setAttribute("gender", gender);
        //    request.setAttribute("hobby", hobby);
        // 자료를 변수 한개에 저장하기 위해 HashMap 사용 (권장)
        Map<String, Object> map = new HashMap<>();
        map.put("name", name); // map.put(변수명,값)
        map.put("age", age);
        gender = gender.equals("m") ? "남" : "여";
        map.put("gender", gender);
        map.put("hobby", hobby);
        //출력 페이지로 넘기기 전에 자료를 저장함
        request.setAttribute("map", map);

        String page = "/ch02/request_result.jsp"; //출력 페이지 주소
//         String page = "/ch02/request_result2.jsp"; //출력 페이지 주소
        // url 의 정보를 분석
        RequestDispatcher rd = request.getRequestDispatcher(page);
        rd.forward(request, response);
        //화면이 전환되면서 데이터가 전달되어 출력됨
    }

    protected void doPost (HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
