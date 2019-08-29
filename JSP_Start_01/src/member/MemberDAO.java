package member;

import config.DB;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class MemberDAO {
    public String loginCheck(String userid, String passwd) {
        String name = null;
        Connection conn = null; //db 접속 객체
        PreparedStatement pstmt = null; //sql 실행 객체
        ResultSet rs = null; //결과셋 탐색 객체
        try {
            conn = DB.dbConn(); //db 에 접속하여 커넥션을 리턴받음
            String sql = "select name from member " + "where userid=? and passwd=?";
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, userid); //1 번 물음표에 아이디 입력
            pstmt.setString(2, passwd); //2 번 물음표에 비번 입력
            rs = pstmt.executeQuery(); //sql 실행
            if (rs.next()) {//레코드가 존재하면(로그인 성공)
                name = rs.getString("name"); // 결과셋.get 자료형("필드명")
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                if (rs != null) rs.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
            try {
                if (pstmt != null) pstmt.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
            try {
                if (conn != null) conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return name;
        //로그인 성공하면 이름이 리턴되고 실패하면 null 이 리턴됨
    }
}
