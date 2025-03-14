<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="./css/user.css">
    <title>注册</title>
</head>
<body>
    <div class="user-box">
        <h2>注册用户</h2>
        <form action="register" method="post">
            <div class="input-group">
                <label>账号：</label>
                <input type="text" name="username" required placeholder="请输入账号">
            </div>
            <div class="input-group">
                <label>密码：</label>
                <input type="password" name="password" required placeholder="请输入密码">
            </div>
            <button type="submit">注册</button>
        </form>
        <div class="go-link">
            <p>已经有账号了？<a href="login.jsp">去登陆</a></p>
        </div>
    </div>
</body>
</html>
