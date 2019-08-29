package sec16.ex02;

import common.DB;

import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class MemberDAO {
    private Connection con;
    private PreparedStatement pstmt;
    private DataSource dataFactory;

    public boolean overlappedID(String id) {
        boolean result = false;
        try {
            con = DB.dbConn();
            String query = "select decode(count(*), 1, 'true', 'false') as result from t_member";
            query += " where id=?";
            System.out.println("preparedStatement : " + query);
            pstmt = con.prepareStatement(query);
            pstmt.setString(1, id);
            ResultSet rs = pstmt.executeQuery();
            rs.next();
            result = Boolean.parseBoolean(rs.getString("result"));
            pstmt.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }
}
