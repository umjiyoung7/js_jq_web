//package sec17.ex02;
//
//import common.DB;
//
//import java.sql.Connection;
//import java.sql.PreparedStatement;
//import java.sql.ResultSet;
//import java.sql.SQLException;
//import java.util.ArrayList;
//import java.util.Date;
//import java.util.List;
//
//public class MemberDAO {
//    private Connection conn;
//    private PreparedStatement pstmt;
//
//    public List listMembers() {
//        List membersList = new ArrayList();
//        try {
//            conn = DB.dbConn();
//            String query = "select * from t_member order by joinDate desc";
//            System.out.println(query);
//            pstmt = conn.prepareStatement(query);
//            ResultSet rs = pstmt.executeQuery();
//            while (rs.next()) {
//                String id = rs.getString("id");
//                String pwd = rs.getString("pwd");
//                String name = rs.getString("name");
//                String email = rs.getString("email");
//                Date joinDate = rs.getDate("joinDate");
//                MemberVO memberVO = new MemberVO(id, pwd, name, email, joinDate);
//                membersList.add(memberVO);
//            }
//            rs.close();
//            pstmt.close();
//            conn.close();
//        } catch (SQLException e) {
//            e.printStackTrace();
//        }
//        return membersList;
//    }
//
//    public void addMember(MemberVO memberVO) {
//        try {
//            conn = DB.dbConn();
//            String id = memberVO.getId();
//            String pwd = memberVO.getPwd();
//            String name = memberVO.getName();
//            String email = memberVO.getEmail();
//            String query = "insert into t_member(id, pwd, name, email)" + " values(?,?,?,?)";
//            System.out.println(query);
//            pstmt = conn.prepareStatement(query);
//            pstmt.setString(1, id);
//            pstmt.setString(2, pwd);
//            pstmt.setString(3, name);
//            pstmt.setString(4, email);
//            pstmt.executeUpdate();
//            pstmt.close();
//            conn.close();
//        } catch (SQLException e) {
//            e.printStackTrace();
//        }
//    }
//
//    public MemberVO findMembers(String _id) {
//        MemberVO memInfo = null;
//        try {
//            conn = DB.dbConn();
//            String query = "select * from t_member where id=?";
//            pstmt = conn.prepareStatement(query);
//            pstmt.setString(1, _id);
//            System.out.println(query);
//            ResultSet rs = pstmt.executeQuery();
//            rs.next();
//            String id = rs.getString("id");
//            String pwd = rs.getString("pwd");
//            String name = rs.getString("name");
//            String email = rs.getString("email");
//            Date joinDate = rs.getDate("joinDate");
//            memInfo = new MemberVO(id, pwd, name, email, joinDate);
//            pstmt.close();
//            conn.close();
//        } catch (Exception e) {
//            e.printStackTrace();
//        }
//        return memInfo;
//    }
//
//    public void modMember(MemberVO memberVO) {
//        String id = memberVO.getId();
//        String pwd = memberVO.getPwd();
//        String name = memberVO.getName();
//        String email = memberVO.getEmail();
//        try {
//            conn = DB.dbConn();
//            String query = "update t_member set pwd=?, name=?, email=? where id=?";
//            System.out.println(query);
//            pstmt = conn.prepareStatement(query);
//            pstmt.setString(1, pwd);
//            pstmt.setString(2, name);
//            pstmt.setString(3, email);
//            pstmt.setString(4, id);
//            pstmt.executeUpdate();
//            pstmt.close();
//            conn.close();
//        } catch (Exception e) {
//            e.printStackTrace();
//        }
//    }
//
//    public void delMember(String id) {
//        try {
//            conn = DB.dbConn();
//            String query = "delete from t_member where id=?";
//            System.out.println(query);
//            pstmt = conn.prepareStatement(query);
//            pstmt.setString(1, id);
//            pstmt.executeUpdate();
//        } catch (Exception e) {
//            e.printStackTrace();
//        }
//    }
//}
