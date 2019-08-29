package common;
import javax.servlet.http.Cookie;

public class Util {
    //쿠키배열에서 쿠키값을 찾는 함수
    // 쿠키.getName() 쿠키변수이름, 쿠키.getValue() 쿠키값
    public static String getCookie(Cookie[] cookies, String name) {
        String result = "";
        if (cookies != null) {
            for (int i = 0; i < cookies.length; i++) {
                if (cookies[i].getName().equals(name)) {
                    result = cookies[i].getValue();
                }
            }
        }
        return result;
    }
}