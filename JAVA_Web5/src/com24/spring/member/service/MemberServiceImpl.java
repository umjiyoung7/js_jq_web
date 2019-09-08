//package com24.spring.member.service;
//
//import com24.spring.member.dao.MemberDAO;
//import com24.spring.member.vo.MemberVO;
//import org.springframework.dao.DataAccessException;
//
//import java.lang.reflect.Member;
//import java.util.List;
//
//public class MemberServiceImpl implements MemberService {
//    private MemberDAO memberDAO;
//
//    public void setMemberDAO(MemberDAO memberDAO) {
//        this.memberDAO = memberDAO;
//    }
//
//    @Override
//    public List listMembers() throws DataAccessException {
//        List membersList = null;
//        membersList = memberDAO.selectAllMemberList();
//        System.out.println(">>>service" + membersList);
//        return membersList;
//    }
//
//    @Override
//    public int addMember(MemberVO memberVO) throws DataAccessException {
//        return memberDAO.insertMember(memberVO);
//    }
//
//    @Override
//    public int removeMember(String id) throws DataAccessException {
//        return memberDAO.deleteMember(id);
//    }
//}
