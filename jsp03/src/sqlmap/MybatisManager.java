package sqlmap;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import java.io.Reader;

public class MybatisManager {
    private static SqlSessionFactory instance;
    //heap영역에 만들어 짐

    private MybatisManager() {
    } //private 생성자(외부에서 호출할 수 없음)

    //생성자 대신 제공하는 함수
    public static SqlSessionFactory getInstance() {
        Reader reader = null;
        try {
            // mybatis 환경설정 파일을 읽음
            reader = Resources.getResourceAsReader("sqlmap/sqlMapConfig.xml");
            // SqlSessionFactory 객체를 생성하는 코드
            instance = new SqlSessionFactoryBuilder().build(reader);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                if (reader != null) reader.close();
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
        return instance;
    }
}