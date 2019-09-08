//package com21.spring.ex02;
//
//import org.springframework.web.servlet.ModelAndView;
//import org.springframework.web.servlet.mvc.multiaction.MultiActionController;
//
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//
//public class UserController extends MultiActionController {
//    public ModelAndView login(HttpServletRequest request, HttpServletResponse response) throws Exception{
//        String userID = "";
//        String passwd = "";
//        ModelAndView mav = new ModelAndView();
//        request.setCharacterEncoding("utf-8");
//        userID = request.getParameter("userID");
//        passwd = request.getParameter("passwd");
//        mav.addObject("userID", userID);
//        mav.addObject("passwd", passwd);
//        mav.setViewName("result");
//        return mav;
//    }
//
//public ModelAndView memberInfo(HttpServletRequest request, HttpServletResponse response) throws Exception{
//   request.setCharacterEncoding("utf-8");
//   ModelAndView mav = new ModelAndView();
//    String id = request.getParameter("id");
//    String pwd = request.getParameter("pwd");
//    String name = request.getParameter("name");
//    String email = request.getParameter("email");
//    mav.addObject("id", id);
//    mav.addObject("pwd", pwd);
//    mav.addObject("name", name);
//    mav.addObject("email", email);
//    mav.setViewName("memberInfo");
//    return mav;
//}
//
//    public ModelAndView memberInfo(HttpServletRequest request, HttpServletResponse response) throws Exception{
//        String id = request.getParameter("id");
//        String pwd = request.getParameter("pwd");
//        String name = request.getParameter("name");
//        String email = request.getParameter("email");
//
//        String viewName = getViewName(request);
//        ModelAndView mav = new ModelAndView();
//        request.setCharacterEncoding("utf-8");
//
//        id = request.getParameter("id");
//        pwd = request.getParameter("pwd");
//        name = request.getParameter("name");
//        email = request.getParameter("email");
//
//        mav.addObject("id", id);
//        mav.addObject("pwd", pwd);
//        mav.addObject("name", name);
//        mav.addObject("email", email);
//        mav.setViewName(viewName);
//        System.out.println("ViewName : " + viewName);
//        return mav;
//    }
//
//    public ModelAndView login(HttpServletRequest request, HttpServletResponse response) throws Exception{
//        String userID = "";
//        String passwd = "";
//        String viewName = getViewName(request);
//        ModelAndView mav = new ModelAndView();
//        request.setCharacterEncoding("utf-8");
//        userID = request.getParameter("userID");
//        passwd = request.getParameter("passwd");
//        mav.addObject("userID", userID);
//        mav.addObject("passwd", passwd);
//        mav.setViewName(viewName);
//        System.out.println("ViewName : " + viewName);
//        return mav;
//     }
//
//    private  String getViewName(HttpServletRequest request) throws Exception {
//        String contextPath = request.getContextPath();
//        String uri = (String)request.getAttribute("javax.servlet.include.request_uri");
//        if(uri == null || uri.trim().equals("")) {
//            uri = request.getRequestURI();
//        }
//
//        int begin = 0;
//        if(!((contextPath==null)||("".equals(contextPath)))){
//            begin = contextPath.length();
//        }
//        System.out.println("begin : " + begin);
//
//        int end;
//        if(uri.indexOf(";")!=-1){
//            end=uri.indexOf(";");
//        }else if(uri.indexOf("?")!=-1){
//            end=uri.indexOf("?");
//        }else{
//            end=uri.length();
//        }
//        System.out.println("end : " + end);
//
//        String fileName=uri.substring(begin,end);
//        System.out.println(">>>>0" + fileName);
//
//        if(fileName.indexOf(".")!=-1){
//            fileName=fileName.substring(0,fileName.lastIndexOf("."));
//            System.out.println(">>>>1" + fileName);
//        }
//        if(fileName.lastIndexOf("/")!=-1){
//            fileName=fileName.substring(fileName.lastIndexOf("/"),fileName.length());
//            System.out.println(">>>>2" + fileName);
//
//        }
//        return fileName;
//
//     }
//}
