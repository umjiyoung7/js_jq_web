//package sec17.ex01;
//
//import common.DB;
//
//import javax.sql.DataSource;
//import java.sql.Connection;
//import java.sql.PreparedStatement;
//import java.sql.ResultSet;
//import java.sql.SQLException;
//import java.util.ArrayList;
//import java.util.Date;
//import java.util.List;
//
//public class MemberDAO {
//    private DataSource dataFactory;
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
//            String query = "insert into t_member(id,pwd,name,email)"+" values(?,?,?,?)";
//            System.out.println(query);
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
//}
