<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>异常列表-用户中心-涂涂影院后台管理系统-Powered by Jeenotes! X1.0</title>
<link rel="shortcut icon" href="${ctxStatic}/images/favicon.ico" type="image/x-icon"/>
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
						<span>用户中心</span>
						<span class="divider">/</span>
						<span class="active">异常列表</span>
					</div>
				</div>
				<!--全部主体内容-->
				<div class="list-content">
					<!--块元素-->
					<div class="block">
						<!--页面有多个表格时，可以用于标识表格-->
						<h2>异常列表</h2>
						<!--正文内容-->
						<div class="main-20">
							
							<table id="table" class="table">
								<thead>
									<tr>
										<th style="width:30px;">序号</th>
										<th>系统版本</th>
										<th>手机型号</th>
										<th style="width:350px;overflow:hidden;white-space:nowrap;text-overflow:ellipsis;">异常信息</th>
										<th>创建时间</th>
									</tr>
								</thead>
								<tbody>
									<c:choose>
										<c:when test="${fn:length(pageInfo.list)==0}">
											<tr>
												<td colspan="11" style="text-align:center;">暂无记录</td>
											</tr>
										</c:when>
										<c:otherwise>
											<c:forEach items="${pageInfo.list}" var="entity" varStatus="status" >
												<tr>
													<td>${status.index+1}</td>
													<td>${entity.phone_sys_version}</td>
													<td>${entity.phone_model}</td>
													<td>${entity.exception_msg}</td>
													<%-- <td>${entity.create_date}</td> --%>
													<td><fmt:formatDate value="${entity.create_date}" pattern="yyyy-MM-dd HH:mm"/>  </td>
												</tr>
											</c:forEach>
										</c:otherwise>
									</c:choose>
								</tbody>
							</table>
							<!-- 分页 -->
							<div class="page">
								<ul id="page" class="pagination"></ul>
							</div>
							
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>

<script>
	var currentPage = "${pageInfo.pageNum}";
	var pageCount = "${pageInfo.pages}";
	console.log("当前页："+currentPage+"_页数："+pageCount);
	
	javaex.page({
		id : "page",
		pageCount : pageCount,	// 总页数
		currentPage : currentPage,// 默认选中第几页
		// 返回当前选中的页数
		callback:function(rtn) {
			console.log("rtn:"+rtn.pageNum);
			//alert("当前选中的页数：" + rtn.pageNum);
			search(rtn.pageNum);
		}
	});
	
	function search(pageNum) {
		console.log("pageNum:"+pageNum);
		if (pageNum==undefined) {
			pageNum = 1;
		}
		
		window.location.href = "list"
				+ "?pageNum="+pageNum;
	}
	
</script>
</html>