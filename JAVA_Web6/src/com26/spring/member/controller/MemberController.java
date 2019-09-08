package com26.spring.member.controller;

import com26.spring.member.vo.MemberVO;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface MemberController {
    public ModelAndView listMembers(HttpServletRequest request, HttpServletResponse response) throws Exception;
    public ModelAndView addMember(@ModelAttribute("info") MemberVO memverVO, HttpServletRequest request, HttpServletResponse response) throws Exception;
    public ModelAndView removeMember(@RequestParam("id") String id, HttpServletRequest request, HttpServletResponse response) throws Exception;
}
