//package com23.spring.ex01;
//
//import org.apache.ibatis.io.Resources;
//import org.apache.ibatis.session.SqlSession;
//import org.apache.ibatis.session.SqlSessionFactory;
//import org.apache.ibatis.session.SqlSessionFactoryBuilder;
//
//import java.io.Reader;
//import java.util.List;
//
//public class MemberDAO {
//    public static SqlSessionFactory sqlMapper = null;
//
//    private static SqlSessionFactory getInstance() {
//        if(sqlMapper == null) {
//            try {
//                String resource = "mybatis/SqlMapConfig.xml";
//                Reader reader = Resources.getResourceAsReader(resource);
//                sqlMapper = new SqlSessionFactoryBuilder().build(reader);
//                reader.close();
//            } catch (Exception e) {
//                e.printStackTrace();
//            }
//        }
//        return sqlMapper;
//    }
//
////    public List<MemberVO> selectAllMemberList() {
////        sqlMapper = getInstance();
////        SqlSession session = sqlMapper.openSession();
////        List<MemberVO> memlist = null;
////        memlist = session.selectList("mapper.member.selectAllMemberList");
////        return memlist;
////    }
//
//    public List<MemberVO> selectAllMemberList() {
//        sqlMapper = getInstance();
//        SqlSession session = sqlMapper.openSession();
//        List<MemberVO> membersList = null;
//        membersList = session.selectList("mapper.member.selectAllMemberList");
//        return membersList;
//    }
//}
