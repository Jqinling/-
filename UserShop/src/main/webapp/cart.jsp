<%@ page import="java.util.List" %>
<%@ page import="com.bean.Cake" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="./css/cart.css">
    <title>我的购物车</title>
</head>
<body>
<div class="navbar">
    <div class="user-info">
        <span>欢迎<%=session.getAttribute("username")%></span>
        <a href="logout" style="color: white;">退出登录</a>
    </div>
</div>
<div class="cart-container">
    <%
        List<Cake> cart = (List<Cake>) request.getAttribute("cartItems");
        if (cart == null) {%><p class="empty-cart">购物车空空如也，快去逛逛吧~</p><%
        }else{%>
        <table class="cart-table">
            <thead>
            <tr>
                <th>名称</th>
                <th>单价</th>
            </tr>
            </thead>
            <tbody>
            <%for(Cake item : cart ){%>
            <tr>
                <td><%=item.getName()%></td>
                <td>¥<%=item.getPrice()%></td>
            </tr>
            <%
                }
            %>
        </tbody>
    </table>
    <%
        }
    %>
    <div style="display: flex;justify-content: center;margin-top: 50px">
        <a href="/shop">返回商品页</a>
    </div>
</div>
</body>
</html>
