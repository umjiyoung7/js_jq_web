package board.dao;
import board.dto.BoardCommentDTO;
import board.dto.BoardDTO;
import org.apache.ibatis.session.SqlSession;
import sqlmap.MybatisManager;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class BoardDAO {
    public List<BoardDTO> searchList(String search_option, String keyword) {
        SqlSession session = MybatisManager.getInstance().openSession();
        Map<String, Object> map = new HashMap<>();
        map.put("search_option", search_option);
        map.put("keyword", "%" + keyword + "%");
        List<BoardDTO> list = session.selectList("board.searchList", map);
        session.close();
        return list;
    }

    //답변 저장
    public void reply(BoardDTO dto) {
        SqlSession session = MybatisManager.getInstance().openSession();
        session.insert("board.reply", dto);
        session.commit();
        session.close();
    }

    //답글의 순서 조정
    public void updateStep(int ref, int re_step) {
        SqlSession session = MybatisManager.getInstance().openSession();
        // mapper에 전달할 값이 2개 이상인 경우 Map 또는 DTO에 묶어서 전달
        Map<String, Object> map = new HashMap<>();
        map.put("ref", ref);
        map.put("re_step", re_step);
        session.update("board.updateStep", map);
        session.commit();
        session.close();
    }

    //게시물 삭제
    public void delete(int num) {
        SqlSession session = MybatisManager.getInstance().openSession();
        session.delete("board.delete", num);
        session.commit();
        session.close();
    }

    //게시물 수정
    public void update(BoardDTO dto) {
        SqlSession session = MybatisManager.getInstance().openSession();
        session.update("board.update", dto);
        session.commit();
        session.close();
    }

    //비밀번호 체크 함수
    public String passwdCheck(int num, String passwd) {
        SqlSession session = MybatisManager.getInstance().openSession();
        // board.xml에 전달할 값이 2개이므로 해시맵에 묶어서 전달
        Map<String, Object> map = new HashMap<>();
        map.put("num", num);
        map.put("passwd", passwd);
        String result = session.selectOne("board.pass_check", map);
        session.close();
        return result;
    }

    //댓글 목록을 리턴하는 함수
    public List<BoardCommentDTO> commentList(int board_num) {
        SqlSession session = MybatisManager.getInstance().openSession();
        List<BoardCommentDTO> list = session.selectList("board.commentList", board_num);
        session.close();
        return list;
    }

    //댓글을 저장하는 함수
    public void commentAdd(BoardCommentDTO dto) {
        SqlSession session = MybatisManager.getInstance().openSession();
        session.insert("board.commentAdd", dto);
        session.commit();
        session.close();
    }

    //조회수 증가 처리 함수
    public void plusReadCount(int num) {
        SqlSession session = MybatisManager.getInstance().openSession();
        session.update("board.plusReadCount", num);
        session.commit();
        session.close();
    }

    //게시물 번호에 해당하는 레코드를 dto에 담아서 리턴하는 함수
    public BoardDTO view(int num) {
        SqlSession session = MybatisManager.getInstance().openSession();
        BoardDTO dto = session.selectOne("board.view", num);
        session.close();
        return dto;
    }

    //다운로드 횟수를 1 증가 시키는 함수
    public void plusDown(int num) {
        SqlSession session = MybatisManager.getInstance().openSession();
        session.update("board.plusDown", num);
        session.commit();
        session.close();
    }

    //게시물 번호에 해당하는 첨부파일 이름을 리턴하는 함수
    public String getFileName(int num) {
        SqlSession session = MybatisManager.getInstance().openSession();
        String result = session.selectOne("board.getFileName", num);
        session.close();
        return result;
    }

    public void insert(BoardDTO dto) {
        //sql 실행 객체 생성
        SqlSession session = MybatisManager.getInstance().openSession();
        // 네임스페이스가 board이고 id가 insert인 태그 호출
        session.insert("board.insert", dto);
        session.commit(); //변경사항 확정
        session.close(); //sql 실행 객체 닫기
    }

    public List<BoardDTO> list() {
        //SqlSession 객체 생성
        SqlSession session = MybatisManager.getInstance().openSession();
        // board.xml의 id가 list인 태그의 sql 명령어 실행
        List<BoardDTO> list = session.selectList("board.list");
        //selectOne 검색한 경우 디비의 row 값이 하나일때
        //나중에 프로시저를 가장 많이 쓰게 된다
        // 세션 닫기
        session.close();
        return list;
    }
}