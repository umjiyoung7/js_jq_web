package com26.spring.ex02;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.Map;

@Controller("loginController")
public class LoginController {
    @RequestMapping(value = {"/test/loginForm.do", "/loginForm2.do"}, method = {RequestMethod.GET})
    public ModelAndView loginForm(HttpServletRequest request, HttpServletResponse response) throws Exception {
        ModelAndView mav = new ModelAndView();
        mav.setViewName("loginForm");
        return mav;
    }

//    @RequestMapping(value = "/test/login.do", method = {RequestMethod.GET, RequestMethod.POST})
//    public ModelAndView login(HttpServletRequest request, HttpServletResponse response) throws Exception {
//        request.setCharacterEncoding("utf-8");
//        ModelAndView mav = new ModelAndView();
//        mav.setViewName("result");
//        String userID = request.getParameter("userID");
//        String userName = request.getParameter("userName");
//        mav.addObject("userID", userID);
//        mav.addObject("userName", userName);
//        return mav;
//    }

    @RequestMapping(value = "/test/login5", method = {RequestMethod.GET, RequestMethod.POST})
    public String login5(Model model, HttpServletRequest request, HttpServletResponse response) throws Exception {
        request.setCharacterEncoding("utf-8");
        model.addAttribute("userID", "hong");
        model.addAttribute("userName", "홍길동");
        return "result";
    }

    @RequestMapping(value = "/test/login4.do", method = {RequestMethod.GET, RequestMethod.POST})
    public ModelAndView login4(@ModelAttribute("info") LoginVO loginVO, HttpServletRequest request, HttpServletResponse response) throws Exception {
        request.setCharacterEncoding("utf-8");
        ModelAndView mav = new ModelAndView();
        System.out.println("userID : " + loginVO.getUserID());
        System.out.println("userName : " + loginVO.getUserName());
        mav.setViewName("result");
        return mav;
    }

    @RequestMapping(value = "/test/login3.do", method = {RequestMethod.GET, RequestMethod.POST})
    public ModelAndView login3(@RequestParam Map<String, String> info,
                               HttpServletRequest request, HttpServletResponse response) throws Exception {
        request.setCharacterEncoding("utf-8");
        ModelAndView mav = new ModelAndView();
        String userID = info.get("userID");
        String userName = info.get("userName");
        System.out.println("userID : " + userID);
        System.out.println("userName : " + userName);
        mav.addObject("info", info);
        mav.setViewName("result");
        return mav;
    }

//    @RequestMapping(value = "/test/login2.do", method = {RequestMethod.GET, RequestMethod.POST})
//    public ModelAndView login2(@RequestParam("userID") String userID,
//                               @RequestParam(value = "userName", required = true) String userName,
//                               @RequestParam(value = "email", required = false) String email,
//                               HttpServletRequest request, HttpServletResponse response) throws Exception {
//        request.setCharacterEncoding("utf-8");
//        ModelAndView mav = new ModelAndView();
//        mav.setViewName("result");
//        System.out.println("userID : " + userID);
//        System.out.println("userName : " + userName);
//        System.out.println("email : " + email);
//        mav.addObject("userID", userID);
//        mav.addObject("userName", userName);
//        mav.addObject("email", email);
//        return mav;
//    }

//    @RequestMapping(value = "/test/login2.do", method = { RequestMethod.GET, RequestMethod.POST })
//    public ModelAndView login2(@RequestParam("userID") String userID,
//                               @RequestParam("userName") String userName,
//                               HttpServletRequest request, HttpServletResponse response) throws Exception {
//        request.setCharacterEncoding("utf-8");
//        ModelAndView mav = new ModelAndView();
//        mav.setViewName("result");
//
//        // String userID = request.getParameter("userID");
//        // String userName = request.getParameter("userName");
//
//        System.out.println("userID: "+userID);
//        System.out.println("userName: "+userName);
//        mav.addObject("userID", userID);
//        mav.addObject("userName", userName);
//
//        return mav;
//    }

}
