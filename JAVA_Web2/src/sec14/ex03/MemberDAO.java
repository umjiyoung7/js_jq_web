package sec14.ex03;


import common.DB;
import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class MemberDAO {
    private Connection con;
    private PreparedStatement pstmt;
    private DataSource dataFactory;

    public List listMembers(){
        List list = new ArrayList();
        try {
            con = DB.dbConn();
            String query = "select * from t_member order by joinDate desc ";
            System.out.println("prepareStatement : " + query);
            pstmt = con.prepareStatement(query);
            ResultSet rs = pstmt.executeQuery();
            while (rs.next()) {
                String id = rs.getString("id");
                String pwd = rs.getString("pwd");
                String name = rs.getString("name");
                String email = rs.getString("email");
                Date joinDate = rs.getDate("joinDate");
                MemberBean vo = new MemberBean();
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

    public List listMembers(MemberBean memberBean){
        List list = new ArrayList();
        String _name = memberBean.getName();
        try {
            con = DB.dbConn();
            String query = "select * from t_member ";
            if ((_name != null && _name.length() != 0)) {
                query += " where name=?";
                pstmt = con.prepareStatement(query);
                pstmt.setString(1, _name);
            }else {
                pstmt = con.prepareStatement(query);
            }
            System.out.println("prepareStatement : " + query);
            ResultSet rs = pstmt.executeQuery();
            while (rs.next()) {
                String id = rs.getString("id");
                String pwd = rs.getString("pwd");
                String name = rs.getString("name");
                String email = rs.getString("email");
                Date joinDate = rs.getDate("joinDate");
                MemberBean vo = new MemberBean();
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

    public void addMember(MemberBean memberBean) {
        try {
            Connection con = DB.dbConn();
            String id = memberBean.getId();
            String pwd = memberBean.getPwd();
            String name = memberBean.getName();
            String email = memberBean.getEmail();
            String query = "insert into t_member";
            query += " (id,pwd,name,email)";
            query += "values(?,?,?,?)";
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


}
