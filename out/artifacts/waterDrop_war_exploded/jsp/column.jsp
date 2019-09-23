<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<meta charset="utf-8">
<title>栏目管理</title>
<link rel="stylesheet" href="css/bootstrap.min.css" />
<style>
.table th, .table td {
	text-align: center;
	vertical-align: middle !important;
}

.col-md-12 {
	padding-top: 1.25rem;
}
</style>
</head>
<body>
	<div class="container-fluid">
		<!-- 标题 -->
		<div class="col-md-11">
			<h3>栏目管理</h3>
		</div>
		<!-- 分割线 -->
		<div class="divider">
			<HR
				style="FILTER: alpha(opacity = 100, finishopacity = 0, style = 3)"
				width="90%" color=#987cb9 SIZE=3 align=center>
		</div>
		<div class="col-md-8"></div>
		<div class="col-md-4 text-right">
			<a href="#" class="btn btn-success">添加栏目</a> <a href="#"
				class="btn btn-danger">删除</a>
		</div>

		<form action="ColumnServlet" method="post">
			<div class="col-md-12">
				<table width="100%"
					class="table table-bordered table-striped table-hover">
					<tr>
						<td><input type="checkbox" /></td>
						<td>栏目</td>
						<td>添加时间</td>
						<td>文章数</td>
					</tr>
					<c:forEach items="${list }" var="list">
					<tr>
						<td><input type="checkbox" /></td>
						<td>${list.colum }</td>
						<td>${list.addtime }</td>
						<td>${list.number }</td>
					</tr>
					</c:forEach>
				</table>
			</div>
		</form>
	</div>
</body>
</html>
