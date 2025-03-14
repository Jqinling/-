package com.wushuyue.servlet.user;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

@WebServlet("/register")
public class RegisterServlet extends HttpServlet {
    static final Map<String, String> usermap = new HashMap<String, String>();
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String username = req.getParameter("username");
        String password = req.getParameter("password");
        if(usermap.containsKey(username)){
            resp.getWriter().write("用户已存在");
        }else{
            usermap.put(username, password);
            resp.sendRedirect("login.jsp");
        }
    }
}
