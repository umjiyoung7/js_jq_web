package com24.spring.member.dao;

import com24.spring.member.vo.MemberVO;
import org.springframework.dao.DataAccessException;

import javax.xml.crypto.Data;
import java.util.List;

public interface MemberDAO {
    public List selectAllMemberList() throws DataAccessException;
    public int insertMember(MemberVO memberVO) throws DataAccessException;
    public int deleteMember(String id) throws DataAccessException;
}
