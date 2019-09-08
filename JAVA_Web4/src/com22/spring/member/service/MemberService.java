package com22.spring.member.service;

import java.util.List;

import org.springframework.dao.DataAccessException;

public interface MemberService {
    public List listMembers() throws DataAccessException;
    public int addMember() throws DataAccessException;
}
