package com.myspring.test.member.service;

import com.myspring.test.member.vo.MemberVO;
import org.springframework.dao.DataAccessException;

import java.util.List;

public interface MemberService {
    public List listMembers() throws DataAccessException;
    public int addMember(MemberVO memberVO) throws DataAccessException;
    public int removeMember(String id) throws DataAccessException;
    public MemberVO login(MemberVO memberVO) throws Exception;
}
