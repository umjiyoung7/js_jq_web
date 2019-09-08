package com22.spring.member.service;

import java.util.List;

import com22.spring.member.vo.MemberVO;
import org.springframework.dao.DataAccessException;

import com22.spring.member.dao.MemberDAO;

public class MemberServiceImpl implements MemberService {
    private MemberDAO memberDAO;

    public void setMemberDAO(MemberDAO memberDAO) {
        this.memberDAO = memberDAO;
    }

    @Override
    public List listMembers() throws DataAccessException {
        List membersList = null;
        membersList = memberDAO.selectAllMembers();
        return membersList;
    }

    @Override
     public int addMember() throws DataAccessException {
        MemberVO memberVO = new MemberVO();
        memberDAO.addMember(memberVO);
        return 0;
    }
}
