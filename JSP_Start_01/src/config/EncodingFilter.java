//package config;
//
//import javax.servlet.*;
//import javax.servlet.annotation.WebFilter;
//import java.io.IOException;
//
////   /* 모든 url pattern
//@WebFilter("/*")
//public class EncodingFilter implements Filter {
//    private String charset = "UTF-8";
//
//    //필터를 제거할 때 호출되는 코드
//    public void destroy() {
//        System.out.println("필터가 제거됨...");
//    }
//
//    //실제 요청이 발생할 때 호출되는 코드
//    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
//        // TODO Auto-generated method stub
//        // place your code here
//        System.out.println("필터가 호출됨...");
//        request.setCharacterEncoding(charset);
//        // pass the request along the filter chain
//        chain.doFilter(request, response);
//    }
//
//    //필터가 초기화될 때 호출되는 코드
//    public void init(FilterConfig fConfig) throws ServletException {
//        System.out.println("필터가 초기화됨...");
//    }
//}
