<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="./css/user.css">
    <title>登录</title>
</head>
<body>
    <div class="user-box">
        <h2>登录</h2>
        <form action="/login" method="post">
            <div class="input-group">
                <label>账号：</label>
                <input type="text" name="username" placeholder="请输入账号">
            </div>
            <div class="input-group">
                <label>密码：</label>
                <input type="password" name="password" required placeholder="请输入密码">
            </div>
            <div class="remember-me">
                <input type="checkbox" name="remember" id="remember">
                <label for="remember">记住用户名</label>
            </div>
            <button type="submit">登录</button>
        </form>
        <div class="go-link">
            <p>还没有账号？<a href="register.jsp">立即注册</a></p>
        </div>
    </div>
</body>
</html>
