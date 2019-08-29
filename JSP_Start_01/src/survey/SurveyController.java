package survey;

import survey.dao.SurveyDAO;
import survey.dto.SurveyDTO;
import survey.dto.SurveyResultDTO;
import survey.dto.SurveySummaryDTO;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/survey_servlet/*")
// url 과 서블릿 클래스를 연결시켜 주는 코드
public class SurveyController extends HttpServlet {
    private static final long serialVersionUID = 1L;

    //get 방식으로 호출할 때 실행되는 함수
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String url = request.getRequestURL().toString(); //사용자가 요청한 주소
        System.out.println(url);
        System.out.println(url.indexOf("insert.do"));
        SurveyDAO dao = new SurveyDAO();
        //if(url.indexOf("input.do")!=-1) {
        //-1이 페이지 끝
        if (url.contains("input.do")) {
            SurveyDTO dto = dao.viewQuestion(1); // 2번 문제가 리턴됨
            SurveyDTO dto2 = dao.viewQuestion(2); // 1


            request.setAttribute("dto", dto); //출력하기 전에 저장
            request.setAttribute("dto2", dto2);


            // 출력 페이지로 화면 전환
            RequestDispatcher rd = request.getRequestDispatcher("/survey/survey_input.jsp");
            rd.forward(request, response);
        }

//        else if (url.contains("insert.do")) { //응답내용을 저장하는 액션
//            // 문제 번호
//            int survey_idx = Integer.parseInt(request.getParameter("survey_idx"));
//            int survey_idx2 = Integer.parseInt(request.getParameter("survey_idx2"));
//
//            //응답 번호
//            int num = Integer.parseInt(request.getParameter("num"));
//            int num2 = Integer.parseInt(request.getParameter("num2"));
//
//            //dto 에 저장
//            SurveyResultDTO dto = new SurveyResultDTO();
//            SurveyResultDTO dto2 = new SurveyResultDTO();
//
//            dto.setSurvey_idx(survey_idx);
//            dto2.setSurvey_idx(survey_idx);
//
//            dto.setNum(num);
//            dto2.setNum(num);
//
//            //레코드에 저장됨
//            dao.insertSurvey(dto);
//            dao.insertSurvey(dto2);
//
//            //응답완료 페이지로 이동
//            response.sendRedirect("/survey/input_result.jsp");
//        }

        else if (url.contains("insert.do")) { //응답내용을 저장하는 액션
            // 문제 번호
            int survey_idx = 1;
            int survey_idx2 = 2;

            //응답 번호
            int num = Integer.parseInt(request.getParameter("num"));
            int num2 = Integer.parseInt(request.getParameter("num2"));

            //dto 에 저장
            SurveyResultDTO dto = new SurveyResultDTO();
            SurveyResultDTO dto2 = new SurveyResultDTO();

            dto.setSurvey_idx(survey_idx);
            dto2.setSurvey_idx(survey_idx2);

            dto.setNum(num);
            dto2.setNum(num);

            //레코드에 저장됨
            dao.insertSurvey(dto);
            dao.insertSurvey(dto2);

            //응답완료 페이지로 이동
//            response.sendRedirect("/survey/survey_result.jsp");

//            RequestDispatcher rd = request.getRequestDispatcher("/survey/survey_result.jsp");
//            rd.forward(request, response);
        }


        //else if (url.contains("survey_result.do")) {
            int survey_idx =1;
            List<SurveySummaryDTO> items = dao.listSummary(survey_idx);

            request.setAttribute("list", items);
            survey_idx =2;
            items = dao.listSummary(survey_idx);
            request.setAttribute("list2", items);

            RequestDispatcher rd = request.getRequestDispatcher("/survey/survey_result.jsp");
            rd.forward(request, response);
        //}

    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}