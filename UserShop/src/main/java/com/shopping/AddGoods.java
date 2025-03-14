package com.shopping;

import com.bean.Cake;
import com.database.CakeDataBase;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/add")
public class AddGoods extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession(false);
        if(session == null || session.getAttribute("username") == null) {
            resp.sendRedirect("login.jsp");
            return;
        }else{
            String id = req.getParameter("id");
            Cake cake = CakeDataBase.getCake(id);

            List<Cake> cart = (List<Cake>) session.getAttribute("cart");
            if (cart == null) {
                cart = new ArrayList<>();
                session.setAttribute("cart", cart);
            }
            cart.add(cake);
            req.getRequestDispatcher("showCart").forward(req, resp);
        }
    }
}
