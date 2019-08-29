//package sec12.ex02;
//
//import common.DB;
//
//import javax.naming.Context;
//import javax.naming.InitialContext;
//import javax.sql.DataSource;
//import java.sql.Connection;
//import java.sql.PreparedStatement;
//import java.sql.ResultSet;
//import java.util.ArrayList;
//import java.util.Date;
//import java.util.List;
//
//public class MemberDAO {
//    private Connection con;
//    private PreparedStatement pstmt;
//    private DataSource dataFactory;
//
//    public List listMembers(MemberVO memberVO){
//        List membersList = new ArrayList();
//        String _name = memberVO.getName();
//        try {
//            con = DB.dbConn();
//            String query = "select * from t_member";
//            String no = "찾는 사람이 없음";
//            if ((_name != null && _name.length() != 0)) {
//                query += " where name=?";
//                pstmt = con.prepareStatement(query);
//                pstmt.setString(1, _name);
//            } else {
//                pstmt = con.prepareStatement(query);
//            }
//            System.out.println("prepareStatement : " + query);
//            ResultSet rs = pstmt.executeQuery();
//            while (rs.next()) {
//                String id = rs.getString("id");
//                String pwd = rs.getString("pwd");
//                String name = rs.getString("name");
//                String email = rs.getString("email");
//                Date joinDate = rs.getDate("joinDate");
//                MemberVO vo = new MemberVO();
//                vo.setId(id);
//                vo.setPwd(pwd);
//                vo.setName(name);
//                vo.setEmail(email);
//                vo.setJoinDate(joinDate);
//                membersList.add(vo);
//            }
//            rs.close();
//            pstmt.close();
//            con.close();
//        } catch (Exception e) {
//            e.printStackTrace();
//        }
//        return membersList;
//    }
//}
