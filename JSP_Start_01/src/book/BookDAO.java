package book;

import config.DB;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class BookDAO {
    public List<BookDTO> bookList() {
        //book 테이블의 레코드를 ArrayList 에 저장
        List<BookDTO> list = new ArrayList<>(); //ArrayList 생성
        Connection conn = null; //db 접속 객체
        PreparedStatement pstmt = null; //sql 실행 객체
        ResultSet rs = null; //레코드셋을 탐색하는 객체
        try {
            conn = DB.dbConn(); //db 에 연결됨
            String sql = "select * from book";
            pstmt = conn.prepareStatement(sql); //sql 실행 객체 생성
            rs = pstmt.executeQuery(); //sql 실행, 레코드셋이 넘어옴
            while (rs.next()) { //레코드 1 개를 읽음
                BookDTO dto = new BookDTO(); //레코드 1 개를 dto 에 저장
                dto.setId(rs.getInt("id"));
                dto.setTitle(rs.getString("title"));
                dto.setAuthor(rs.getString("author"));
                dto.setPrice(rs.getInt("price"));
                dto.setQty(rs.getInt("qty"));
                list.add(dto); //ArrayList 에 dto 를 저장함
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
        return list; //리스트를 리턴함
    }
}

