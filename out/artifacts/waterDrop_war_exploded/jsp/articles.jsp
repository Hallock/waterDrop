<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<meta charset="utf-8">
<title>文章管理</title>
<link rel="stylesheet" href="css/bootstrap.min.css" />
<style>
.table th, .table td {
	text-align: center;
	vertical-align: middle !important;
}

.col-md-12 {
	padding-top: 1.25rem;
}

.col-md-8 {
	padding-left: 0rem;
}
</style>
</head>
<body>
	<div class="container-fluid">
		<!-- 标题 -->
		<div class="col-md-11">
			<h3>文章管理</h3>
		</div>
		<div class="divider">
			<HR
				style="FILTER: alpha(opacity = 100, finishopacity = 0, style = 3)"
				width="90%" color=#987cb9 SIZE=3 align=center>
		</div>

		<!-- 标签栏 -->

		<!-- 查询 -->
		<div class="col-md-8">
			<div class="col-lg-4">
				<div class="input-group">
					<span class="input-group-addon" id="basic-addon1">栏目:</span> <input
						type="text" class="form-control" placeholder="查询...."> <span
						class="input-group-btn">
						<button class="btn btn-info" type="button">查询</button>
					</span>
				</div>
				<!-- /input-group -->
			</div>
			<!-- /.col-lg-6 -->
		</div>
		<!-- 删除，查看 -->
		<div class="col-md-4 text-right">
			<a id="delete" href="#" class="btn btn-danger">删除</a> <a id="view"
				href="#" class="btn btn-success">查看</a>
		</div>

		<form action="ArticleServlet" method="post">
			<!-- 表格 -->
			<div class="col-md-12">
				<table width="100%"
					class="table table-bordered table-striped table-hover">
					<tr>
						<td><input type="checkbox" /></td>
						<td colspan="2">标题</td>
						<td>发表时间</td>
						<td>状态</td>
						<td>浏览数</td>
						<td>点赞数</td>
					</tr>
					<c:forEach items="${list }" var="list">
					<tr>
						<td><input type="checkbox" /></td>
						<td colspan="2">${list.title }</td>
						<td>${list.isstime }</td>
						<td>${list.status }</td>
						<td>${list.viewcount }</td>
						<td>${list.like }</td>
					</tr>
					</c:forEach>
				</table>
			</div>
		</form>
	</div>
</body>
</html>