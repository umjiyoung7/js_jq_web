import org.junit.Test;

import java.sql.Connection;
import java.sql.DriverManager;

public class JDBCTest {
    static {
        try {
            Class.forName("oracle.jdbc.driver.OracleDriver");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Test
    public void connection() {
        try(Connection conn = DriverManager.getConnection(
                "jdbc:oracle:thin:@localhost:1521:XE", "spring", "1234")) {
//            log.info(conn);
        } catch (Exception e) {
//            fail(e.getMessage());
        }
    }
}
