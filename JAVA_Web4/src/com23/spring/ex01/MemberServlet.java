//package com23.spring.ex01;
//
//
//import javax.servlet.RequestDispatcher;
//import javax.servlet.ServletException;
//import javax.servlet.annotation.WebServlet;
//import javax.servlet.http.HttpServlet;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//import java.io.IOException;
//import java.util.List;
//
//@WebServlet("/mem.do")
//public class MemberServlet extends HttpServlet {
//    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        doHandle(request, response);
//    }
//
//    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        doHandle(request, response);
//    }
//
//    protected void doHandle(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        request.setCharacterEncoding("utf-8");
//        response.setContentType("text/html; charset=utf-8");
//        MemberDAO dao = new MemberDAO();
//        List<MemberVO> membersList = dao.selectAllMemberList();
//        request.setAttribute("membersList", membersList);
//        RequestDispatcher dispatch = request.getRequestDispatcher("/pro23/test01/listMembers.jsp");
//        dispatch.forward(request, response);
//    }
//}
