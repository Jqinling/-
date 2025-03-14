package com.wushuyue.servlet.user;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String username = req.getParameter("username");
        String password = req.getParameter("password");
        String remember = req.getParameter("remember");
        if(RegisterServlet.usermap.containsKey(username)&&RegisterServlet.usermap.get(username).equals(password)){
            //创建Session保存用户信息
            HttpSession session = req.getSession();
            session.setAttribute("username", username);
            //记住用户名(Cookie)
            Cookie userCookie = new Cookie("remembered", username);
            userCookie.setMaxAge(remember != null ?   24 * 60 * 60 : 0);
            resp.addCookie(userCookie);
            resp.sendRedirect("/shop");
        }else{
            resp.getWriter().write("用户名或密码错误");
        }
    }
}
