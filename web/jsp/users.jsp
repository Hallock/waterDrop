<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta charset="utf-8">
    <title>用户列表</title>
    <link rel="stylesheet" href="css/bootstrap.min.css"/>
    <style>
        .table th,
        .table td {
            text-align: center;
            vertical-align: middle !important;
        }

        tr {
            height: 3.125rem;
        }
    </style>
</head>
<body>
<form action="UserListServlet" method="post">
    <div class="container-fluid">
        <!-- 标题 -->
        <div class="col-md-11">
            <h3>用户列表</h3>
        </div>
        <!-- 分割线 -->
        <div class="divider">
            <HR
                    style="FILTER: alpha(opacity = 100, finishopacity = 0, style = 3)"
                    width="90%" color=#987cb9 SIZE=3 align=center>
        </div>
        <!-- 表格 -->

        <div class="col-md-12">
            <table width="100%"
                   class="table table-bordered table-striped table-hover">
                <tr>
                    <td>用户名</td>
                    <td>注册时间</td>
                    <td>发帖数量</td>
                </tr>
                <c:forEach items="${list}" var="user">
                    <tr>
                        <td>${user.username }</td>
                        <td>${user.time }</td>
                        <td>${user.number }</td>
                    </tr>
                </c:forEach>
            </table>
        </div>
    </div>
</form>
</body>
</html>