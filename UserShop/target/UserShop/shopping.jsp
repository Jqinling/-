<%@ page import="java.util.Collection" %>
<%@ page import="com.bean.Cake" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="./css/shopping.css">
    <title>购物页</title>
</head>
<body>
    <%-- 导航栏 --%>
    <div class="navbar">
        <div class="user-info">
            <%if(session.getAttribute("username")== null){%>
            <span style="font-size: 18px">未登录</span>
            <a href="/login.jsp" style="color: white;">去登录</a>
                <%}
            else{%>
            <span style="font-size: 18px">欢迎<%=session.getAttribute("username")%></span>
            <a href="logout" style="color: white;">退出登录</a><%}%>
        </div>
        <div class="cart-icon" onclick="showCart()">
            <a href="/showCart">🛒</a>
        </div>
    </div>

    <%-- 商品列表 --%>
    <div class="product-grid">
        <%
            Collection<Cake> cakes = (Collection<Cake>) request.getAttribute("cakes");
            for (Cake cake : cakes) {
        %>
            <div class="product-grid">
                <div class="product-card">
                    <img src="" alt="商品图片" class="product-img">
                    <h3><%=cake.getName()%></h3>
                    <p class="price">¥ <%=cake.getPrice()%></p>
                    <button class="add-to-cart"><a href="./add?id=<%=cake.getId()%>">加入购物车</a></button>
                </div>
            </div>
        <%
            }
        %>
    </div>
</body>
</html>


