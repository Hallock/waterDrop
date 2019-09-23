<%--
  Created by IntelliJ IDEA.
  User: Hallock
  Date: 2019/9/17
  Time: 17:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <title></title>
    <link rel="stylesheet" type="text/css" href="../css/login.css"/>

</head>
<body id="body">
<form>
    <center>
        <h1 id="h1_name">文章管理系统</h1>
        <div id="div01">
            <div id="font">
                <span>注册</span>
                <samp><a href="login.jsp">登录</a></samp><br/>
            </div>
            <input type="text" placeholder="用户名/邮箱"/><br/>
            <input type="text" placeholder="密码"/><br/>
            <input type="text" placeholder="再次输入密码"/><br/>
            <input type="text" placeholder="验证码" id="code_input"/><br/>
            <div id="v_container" style="width: 150px;height: 40px;"></div>
            <script src="../js/gVerify.js"></script>
            <script>
                var verifyCode = new GVerify("v_container");
                document.getElementById("submi").onclick = function () {
                    var res = verifyCode.validate(document.getElementById("code_input").value);
                    if (res) {
                        //  alert("验证正确");
                    } else {
                        //  alert("验证码错误");
                    }
                }

            </script>

            <input type="submit" value="注册" id="submi" class="btn btn-info"/><br/>
        </div>
    </center>
</form>
</body>
</html>