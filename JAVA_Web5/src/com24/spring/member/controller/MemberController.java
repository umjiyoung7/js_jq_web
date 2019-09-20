package com24.spring.member.controller;

import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface MemberController {
    public ModelAndView listMembers(HttpServletRequest request, HttpServletResponse response) throws Exception;
    public ModelAndView addMember(HttpServletRequest request, HttpServletResponse response) throws Exception;
    public ModelAndView removeMember(HttpServletRequest request, HttpServletResponse response) throws Exception;

}
