//package com23.spring.ex02;
//
//import javax.servlet.ServletException;
//import javax.servlet.annotation.WebServlet;
//import javax.servlet.http.HttpServlet;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//import java.io.IOException;
//import java.io.PrintWriter;
//
//@WebServlet("/mem2.do")
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
//        String name = dao.selectName();
//        int pwd = dao.selectPwd();
//        PrintWriter pw = response.getWriter();
//        pw.write("<script>");
//        pw.write("alert('이름 : " + name + "');");
//        pw.write("alert('비번 : " + pwd + "');");
//        pw.write("</script>");
//    }
//}
