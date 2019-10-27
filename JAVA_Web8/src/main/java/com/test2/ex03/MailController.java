//package com.test2.ex03;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.scheduling.annotation.EnableAsync;
//import org.springframework.stereotype.Controller;
//import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.bind.annotation.RequestMethod;
//import org.springframework.web.bind.annotation.RequestParam;
//
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//import java.io.PrintWriter;
//
//@Controller
//@EnableAsync
//public class MailController {
//    @Autowired
//    private MailService mailService;
//
//    @RequestMapping(value = "/sendMail.do", method = RequestMethod.GET)
//    public void sendSimpleMail(HttpServletRequest request, HttpServletResponse response) throws Exception {
//        request.setCharacterEncoding("utf-8");
//        response.setContentType("text/html;charset=utf-8");
//        PrintWriter out = response.getWriter();
//        mailService.sendMail("abc@naver.com", "테스트 메일", "안녕하세요. 테스트 메일입니다.");
//        mailService.sendPreConfiguredMail("테스트 메일임");
//        out.println("메일을 보냈음!!!");
//    }
//}
