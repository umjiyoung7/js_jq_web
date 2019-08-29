package sec08.ex08;

import common.DB;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class MemberDAO{
     Connection con;
     PreparedStatement pstmt;

    public List listMembers() {
        List list = new ArrayList();
        try {
            con = DB.dbConn();
            String query = "select * from t_member";
            System.out.println("prepareStatement : " + query);
            pstmt = con.prepareStatement(query);
            ResultSet rs = pstmt.executeQuery();
            while (rs.next()) {
                String id = rs.getString("id");
                String pwd = rs.getString("pwd");
                String name = rs.getString("name");
                String email = rs.getString("email");
                Date joinDate = rs.getDate("joinDate");
                MemberVO vo = new MemberVO();
                vo.setId(id);
                vo.setPwd(pwd);
                vo.setName(name);
                vo.setEmail(email);
                vo.setJoinDate(joinDate);
                list.add(vo);
            }
            rs.close();
            pstmt.close();
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

    public void addMember(MemberVO memberVO) {
        try {
            con = DB.dbConn();
            String id = memberVO.getId();
            String pwd = memberVO.getPwd();
            String name = memberVO.getName();
            String email = memberVO.getEmail();
            String query = "insert into t_member";
            query += " (id,pwd,name,email)";
            query += " values(?,?,?,?)";
            System.out.println("prepareStatement : " + query);
            pstmt = con.prepareStatement(query);
            pstmt.setString(1, id);
            pstmt.setString(2, pwd);
            pstmt.setString(3, name);
            pstmt.setString(4, email);
            pstmt.executeUpdate();
            pstmt.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void delMember(String id) {
        try {
            con = DB.dbConn();
            String query = "delete from t_member" + " where id=?";
            System.out.println("prepareStatement : " + query);
            pstmt = con.prepareStatement(query);
            pstmt.setString(1, id);
            pstmt.executeUpdate();
            pstmt.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}