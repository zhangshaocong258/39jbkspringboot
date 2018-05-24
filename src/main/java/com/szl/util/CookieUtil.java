package com.szl.util;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;

/**
 * Created by zsc on 2017/7/19.
 */
public class CookieUtil {
    /**
     * 根据Cookie名获取对应的Cookie
     *
     * @param request    HttpServletRequest
     * @param cookieName cookie名称
     * @return 对应cookie，如果不存在则返回null
     */
    public static Cookie getCookie(HttpServletRequest request, String cookieName) {
        Cookie[] cookies = request.getCookies();

        if (cookies == null || cookieName == null || cookieName.equals(""))
            return null;

        for (Cookie c : cookies) {
            if (c.getName().equals(cookieName)) {
                return c;
            }
        }
        return null;
    }
}
