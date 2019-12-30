<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>客服账号列表</title>
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
						<span>客服管理</span>
						<span class="divider">/</span>
						<span class="active">客服账号列表</span>
					</div>
				</div>
				<!--全部主体内容-->
				<div class="list-content">
					<!--块元素-->
					<div class="block">
						<!--页面有多个表格时，可以用于标识表格-->
						<h2>客服账号列表</h2>
						<!--正文内容-->
						<div class="main-20">
							<div style="text-align:right;">
							</div>
							
							<!--表格上方的操作元素，添加、删除、搜索等-->
							<div class="operation-wrap">
								<div class="buttons-wrap">
									<button id="add" class="button blue"><span class="icon-plus"></span> 添加</button>
									<button id="delete" class="button red"><span class="icon-plus"></span> 删除</button>
								</div>
							</div>
							
							<img src="${ctxStatic}/pc/images/default.png" width="100%" height="100%" />
							
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>

<script>
	
	// 点击添加按钮事件
	$("#add").click(function() {
		alert("add");
		
		//console.log("图片链接："+id);
		//alert(id);
		$.ajax({
			url : "add",
			type : "GET",
			dataType : "json",
			success : function(rtn) {
				if (rtn.code=="000000") {
					javaex.optTip({
						content : rtn.message
					});
					/* // 建议延迟加载
					setTimeout(function() {
						// 刷新页面
						window.location.reload();
					}, 2000); */
				} else {
					javaex.optTip({
						content : rtn.message,
						type : "error"
					});
				}
			}
		});
		
	});
	// 点击删除按钮事件
	$("#delete").click(function() {
		alert("delete");
	});
	
	
</script>
</html>