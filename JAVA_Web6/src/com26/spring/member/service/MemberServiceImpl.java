package com26.spring.member.service;

import com26.spring.member.dao.MemberDAO;
import com26.spring.member.vo.MemberVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service("memberService")
@Transactional(propagation = Propagation.REQUIRED)
public class MemberServiceImpl implements MemberService {
    @Autowired
    private MemberDAO memberDAO;

    @Override
    public List listMembers() throws DataAccessException {
        List membersList = null;
        membersList = memberDAO.selectAllMemberList();
        return membersList;
    }

    @Override
    public int addMember(MemberVO member) throws DataAccessException {
        return memberDAO.insertMember(member);
    }

    @Override
    public int removeMember(String id) throws DataAccessException {
        return memberDAO.deleteMember(id);
    }
}
