package sqlmap;

import java.io.IOException;
import java.io.Reader;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class MybatisManager {
    //싱글톤 패턴 사용
    // SqlSession 객체를 만들어내는 SqlSessionFactory 참조변수
    private static SqlSessionFactory instance;

    private MybatisManager() {
    } //private 생성자(외부에서 접근할 수 없음)

    public static SqlSessionFactory getInstance() {
        Reader reader = null;
        try {
            // sqlMapConfig.xml(mybatis 환경설정파일) 파일의 정보를 읽어들이는 코드
            reader=Resources.getResourceAsReader("sqlmap/sqlMapConfig.xml");
            //SqlSessionFactory 객체가 만들어짐
            instance = new SqlSessionFactoryBuilder().build(reader);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                if (reader != null) {
                    reader.close(); //Reader 닫기
                }
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        return instance; //SqlSessionFactory 객체를 리턴
    }
}