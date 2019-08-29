package memo.dao;

import memo.dto.MemoDTO;
import org.apache.ibatis.session.SqlSession;
import sqlmap.MybatisManager;

import java.util.List;

public class MemoDAO {     //메모 목록을 리턴하는 함수
    public List<MemoDTO> listMemo() {
        // SqlSessionFactory 객체로부터 SqlSession 객체를 생성
        SqlSession session = MybatisManager.getInstance().openSession();
        // selectList("네임스페이스.sql 명령어의 id") 레코드셋이 리스트로 리턴됨
        List<MemoDTO> list = session.selectList("memo.list");
        session.close();
        return list;
    }

    // 메모 상세 내용을 리턴하는 코드 viewMemo(메모번호)
    public MemoDTO viewMemo(int idx) {
        //mybatis 실행객체 생성
        SqlSession session = MybatisManager.getInstance().openSession();
        // 결과셋이 레코드 1 개인 경우 selectOne()
        MemoDTO dto = session.selectOne("memo.view", idx);
        session.close(); //mybatis 세션 종료
        return dto;
    }

    public void insertMemo(MemoDTO dto) {
        //mybatis sql 실행객체 생성
        SqlSession session = MybatisManager.getInstance().openSession();
        //네임스페이스가 memo 이고 sql 태그의 id 가 insert 인 쿼리 실행
        String writer = dto.getWriter();
        String memo = dto.getMemo();
        //공백문자 처리(스페이스 두개를 변경)
        writer = writer.replace("  ", "&nbsp;&nbsp;");
        memo = memo.replace("  ", "&nbsp;&nbsp;");
        //태그문자 처리  replace(A,B) A 를 B 로 변경
        writer = writer.replace("<", "&lt;"); // Less Than
        writer = writer.replace(">", "&gt;"); // Greater Than
        memo = memo.replace("<", "&lt;");
        memo = memo.replace(">", "&gt;");
        dto.setWriter(writer);
        dto.setMemo(memo);

        session.insert("memo.insert", dto);
        //insert,update,delete 쿼리는 commit()을 해야 적용됨
        session.commit();         //세션 닫기
        session.close();
    }

    public void updateMemo(MemoDTO dto) {
        SqlSession session = MybatisManager.getInstance().openSession();
        session.update("memo.update", dto);
        session.commit();
        session.close();
    }

    public void deleteMemo(int idx) {
        SqlSession session = MybatisManager.getInstance().openSession();
        session.delete("memo.delete", idx);
        session.commit();
        session.close();
    }
}