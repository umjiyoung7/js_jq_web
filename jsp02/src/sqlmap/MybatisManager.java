package sqlmap;

import java.io.IOException;
import java.io.Reader;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

//mybatis 로 sql 을 실행할 수 있는 객체(SqlSession)를 만드는 SqlSessionFactory 리턴 코드
public class MybatisManager {
    private static SqlSessionFactory instance;

    private MybatisManager() {
    } //외부에서 접근할 수 없음

    public static SqlSessionFactory getInstance() {
        Reader reader = null;
        try { //mybatis 환경설정 파일을 읽음
            reader = Resources.getResourceAsReader("sqlmap/sqlMapConfig.xml");
            instance = new SqlSessionFactoryBuilder().build(reader);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                if (reader != null) reader.close();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        return instance; //SqlSessionFactory 객체를 리턴함
    }
}