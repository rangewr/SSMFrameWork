<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/view/include/taglib.jsp"%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>风格列表-分类管理-涂涂影院后台管理系统-Powered by Jeenotes! X1.0</title>
</head>

<body>
	<div class="wrap">
		<!-- 头部 -->
		<div id="header">
			<c:import url="../header.jsp"></c:import>
		</div>
		<!-- 左侧菜单和主体内容 -->
		<div class="grid-1-7" style="flex: 1;margin:0;">
			<!-- 左侧菜单 -->
			<c:import url="../menu.jsp"></c:import>
			<!-- 面包屑导航和主体内容 -->
			<div class="content">
				<!--面包屑导航-->
				<div class="content-header">
					<div class="breadcrumb">
						<span>分类管理</span>
						<span class="divider">/</span>
						<span class="active">风格列表</span>
					</div>
				</div>
				<!--全部主体内容-->
				<div class="list-content">
					<!--块元素-->
					<div class="block">
						<!--页面有多个表格时，可以用于标识表格-->
						<h2>风格列表</h2>
						<!--正文内容-->
						<div class="main-20">
							
							<!--表格上方的操作元素，添加、删除、搜索等-->
							<div class="operation-wrap">
								<div class="buttons-wrap">
									<a href="edit.action">
										<button id="add" class="button blue"><span class="icon-plus"></span> 添加</button>
									</a>
									<a href="delete">
										<button id="delete" class="button red"><span class="icon-plus"></span> 删除</button>
									</a>
								</div>
							</div>
							<table id="table" class="table">
								<thead>
									<tr>
										<th style="width:20px;"><input type="checkbox" class="fill listen-1"/> </th>
										<th style="width:60px;">序号</th>
										<th>风格名称</th>
										<th>是否停用</th>
									</tr>
								</thead>
								<tbody>
									<c:choose>
										<c:when test="${listSize eq 0}">
											<tr>
												<td colspan="5" style="text-align:center;">暂无记录</td>
											</tr>
										</c:when>
										<c:otherwise>
											<c:forEach items="${videoStyleList}" var="entity" varStatus="status" >
												<tr>
													<td><input type="checkbox" class="fill listen-1-2" name="id" value="${entity.style_id}" /> </td>
													<td>${entity.sort}</td>
													<td>${entity.name}</td>
													<td>
														<c:if test="${entity.enable=='0'}">未停用</c:if>
														<c:if test="${entity.enable=='1'}">已停用</c:if>
													</td>
												</tr>
											</c:forEach>
										</c:otherwise>
									</c:choose>
								</tbody>
							</table>
							<!-- 分页 -->
							
							<!--块元素-->
							
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>


</html>