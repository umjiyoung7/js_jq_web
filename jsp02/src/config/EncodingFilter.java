package config;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import java.io.IOException;

@WebFilter("/*") // 모든 url pattern 에 대해서 필터 적용
public class EncodingFilter implements Filter {
    //필터가 제거될 때
    public void destroy() {
    }

    //필터가 실행될 때
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
        // place your code here
        request.setCharacterEncoding("utf-8");
        // pass the request along the filter chain
        chain.doFilter(request, response);
    }
    //필터가 초기화될 때
    public void init(FilterConfig fConfig) throws ServletException {
    }
}