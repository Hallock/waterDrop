<%--
  Created by IntelliJ IDEA.
  User: Hallock
  Date: 2019/9/17
  Time: 16:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8" />
    <title>文章管理系统</title>
    <link rel="stylesheet" type="text/css" href="../css/login.css" />
   
</head>
<body id="body">
<form action="../loginServlet" method="post">
    <center>
        <h1 id="h1_name">文章管理系统</h1>
        <div id="div01">
            <div id="font">
                <span>登录</span>
                <samp><a href="register.jsp">注册</a></samp><br />
            </div>
            <input type="text" name="name" placeholder="用户名/邮箱" /><br />
            <input type="password" name="password" placeholder="密码" /><br />
            <input type="text" name="verifycode" id="code_input" placeholder="验证码" /><br />
            <div id="v_container" style="width: 150px;height: 40px;"></div>
            <input type="submit" id="submi" value="登录" class="btn btn-info" /><br />

            <script type="text/javascript" src="../js/gVerify.js"></script>
            <script type="text/javascript">
                var verifyCode = new GVerify("v_container");
                document.getElementById("submi").onclick = function() {
                    var res = verifyCode.validate(document.getElementById("code_input").value);
                    if (res) {
                        //alert("验证正确");
                    } else {
                       // alert("验证码错误");
                    }
                }
            </script>
            <a href="#">忘记密码</a>
        </div>
    </center>
</form>
</body>
</html>

