package keyword;

import common.DB;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;


public class keywordDAO {
    public List<String> list(String keyword) {
        List<String> items = new ArrayList<>();
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        try {
            conn = DB.getConn(); //DB 커넥션 리턴
            String sql = "select * from keywords where keyword like ?";
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, keyword + "%"); //키워드를 ?에 입력
            rs = pstmt.executeQuery();
            while (rs.next()) {
                items.add(rs.getString("keyword")); //리스트에 추가
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
        return items;
    }

    public void insert(String keyword) {
        Connection conn = null;
        PreparedStatement pstmt = null;
        try {
            conn = DB.getConn();
            String sql = "insert into keywords values (?)";
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, keyword);
            pstmt.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
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
    }
}