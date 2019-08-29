//package sec10.ex03;
//
//import javax.servlet.*;
//import javax.servlet.annotation.WebFilter;
//import javax.servlet.http.HttpServletRequest;
//import java.io.IOException;
//
////@WebFilter("/*")
//public class EncoderFilter implements Filter {
//    ServletContext context;
//    public void init(FilterConfig config) throws ServletException {
//        System.out.println("utf-8 인코딩...");
//        context = config.getServletContext();
//    }
//
//    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws ServletException, IOException {
//        System.out.println("doFilter 호출");
//        request.setCharacterEncoding("utf-8");
//        String context = ((HttpServletRequest)request).getContextPath();
//        String pathInfo = ((HttpServletRequest)request).getRequestURI();
//        String realPath = request.getRealPath(pathInfo);
//        String mesg = " Context : " + context +
//                "\n URI : " + pathInfo +
//                "\n 물리적 경로 : " + realPath;
//        System.out.println(mesg);
//        long begin = System.currentTimeMillis();
//        chain.doFilter(request, response);
//        long end = System.currentTimeMillis();
//        System.out.println("작업 시간 : " + (end-begin) + "ms");
//    }
//
//    public void destroy() {
//        System.out.println("destroy 호출");
//    }
//
//}
