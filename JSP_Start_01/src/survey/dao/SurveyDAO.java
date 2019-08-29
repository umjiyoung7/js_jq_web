package survey.dao;

import org.apache.ibatis.session.SqlSession;
import sqlmap.MybatisManager;
import survey.dto.SurveyDTO;
import survey.dto.SurveyResultDTO;
import survey.dto.SurveySummaryDTO;

import java.util.List;

public class SurveyDAO {
    //설문문항 세부내용을 리턴하는 함수
    public SurveyDTO viewQuestion(int survey_idx) { //문제번호
        // mybatis 실행 객체 생성
        SqlSession session = MybatisManager.getInstance().openSession();
        // 결과셋이 레코드 1 개인 경우 selectOne(), 여러개인 경우 selectList()
        SurveyDTO dto = session.selectOne("survey.view_question", survey_idx);
        session.close(); //mybatis 세션 종료
        return dto;
    }

    //설문응답내용을 저장하는 함수
    public void insertSurvey(SurveyResultDTO dto) {
        SqlSession session = MybatisManager.getInstance().openSession();
        session.insert("survey.insert_survey", dto);
        session.commit();//insert,update,delete
        session.close();
    }         //설문응답결과 요약 리스트를 리턴하는 함수

    public List<SurveySummaryDTO> listSummary(int survey_idx) {
        SqlSession session = MybatisManager.getInstance().openSession();
        List<SurveySummaryDTO> items = session.selectList("survey.list_summary", survey_idx);
        session.close();
        return items;
    }
}