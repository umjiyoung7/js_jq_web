package sec10.ex01;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;

//@WebServlet("/get")
public class GetAttribute extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html; charset=utf-8");
        PrintWriter out = response.getWriter();
        ServletContext ctx = getServletContext();
        HttpSession sess = request.getSession();

        String ctxMesg = (String) ctx.getAttribute("context");
        String sesMesg = (String) sess.getAttribute("session");
        String reqMesg = (String) request.getAttribute("request");
        System.out.println(">>>>>get " + reqMesg);

        out.println("context : " + ctxMesg);
        out.println("session : " + sesMesg);
        out.println("request : " + reqMesg);

    }
}
