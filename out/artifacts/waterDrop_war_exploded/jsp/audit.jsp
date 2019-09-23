<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
	<head>
		<meta charset="utf-8">
		<title>文章审核</title>
		<link rel="stylesheet" href="css/bootstrap.min.css" />
		<style>
			.table th, .table td {
			text-align: center;
			vertical-align: middle!important;
			}
			.col-md-8{
				padding-left: 0rem;
			}
			.col-md-12{
				padding-top: 1.25rem;
			}
		</style>
	</head>
	<body>
		<div class="container-fluid">
			<div class="col-md-12">
				<h3>文章审核</h3>	
				<HR style="FILTER: alpha(opacity=100,finishopacity=0,style=3)" width="80%" color=#987cb9 SIZE=3>
			</div>
			<div class="col-md-8">
				<div class="col-lg-3">
					<div class="input-group">
						<span class="input-group-addon" id="basic-addon1">状态:</span>
						<select class="form-control">
							<option value="通过">通过</option>
							<option value="不通过">不通过</option>
						</select>
					</div>
				</div>
			</div>
			<div class="col-md-4 text-right">
				<a id="pass" href="#" class="btn btn-primary">审核通过</a>
				<a id="passOff" href="#" class="btn btn-danger">审核不通过</a>
				<a id="view" href="#" class="btn btn-success">查看</a>
			</div>
			<form action="AuditServlet" method="post">
			<div class="col-md-12">
				<table width="100%" class="table table-bordered table-striped table-hover">
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
