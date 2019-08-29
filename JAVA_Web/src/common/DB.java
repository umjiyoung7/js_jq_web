package common;

import java.sql.Connection;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class DB {
    public static Connection dbConn() {
        DataSource ds = null;
        Connection conn = null;
        try {          //context.xml 파일 분석
            Context context = new InitialContext();
            ds = (DataSource) context.lookup("java:comp/env/jdbc/OracleDB");
            conn = ds.getConnection();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return conn;
    }
}