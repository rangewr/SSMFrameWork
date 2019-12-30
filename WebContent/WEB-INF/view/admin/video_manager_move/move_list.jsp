<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>电影列表-视频管理-涂涂影院后台管理系统-Powered by Jeenotes! X1.0</title>
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
						<span>视频管理</span>
						<span class="divider">/</span>
						<span class="active">电影列表</span>
					</div>
				</div>
				<!--全部主体内容-->
				<div class="list-content">
					<!--块元素-->
					<div class="block">
						<!--页面有多个表格时，可以用于标识表格-->
						<h2>电影列表</h2>
						<!--正文内容-->
						<div class="main-20">
							<div style="text-align:right;margin-bottom:10px;">
								<!-- 视频类型 -->
								<select id="style_id" class="no-shadow">
									<option value="">请选择风格</option>
									<c:forEach items="${styleList}" var="styleInfo" varStatus="status" >
										<option value="${styleInfo.style_id}" <c:if test="${styleInfo.style_id==style_id}">selected</c:if>>${styleInfo.name}</option>
									</c:forEach>
								</select>
								<!-- 标题检索 -->
								<input type="text" class="text" id="move_name" value="${move_name}" placeholder="检索视频名称" />
								<!-- 点击查询按钮 -->
								<button class="button blue" style="margin-top: -3px;" onclick="search()"><span class="icon-search"></span></button>
							</div>
							
							<!--表格上方的操作元素，添加、删除、搜索等-->
							<div class="operation-wrap">
								<div class="buttons-wrap">
									<a href="edit">
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
										<th>电影名称</th>
										<th>排序</th>
										<th>地区</th>
										<th>风格</th>
										<th>年代</th>
										<th>是否停用</th>
										<th>操作</th>
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
													<td><input type="checkbox" class="fill listen-1-2" name="id" value="${entity.move_id}" /> </td>
													<td>${status.index+1}</td>
													<td>${entity.move_name}</td>
													<td>${entity.sort}</td>
													<td>${entity.area_name}</td>
													<td>${entity.style_name}</td>
													<td>${entity.time_name}</td>
													<td>
														<c:if test="${entity.enable=='0'}">未停用</c:if>
														<c:if test="${entity.enable=='1'}">已停用</c:if>
													</td>
													<td>
														<a href="edit?move_id=${entity.move_id}">
															<button class="button blue"><span class="icon-edit"></span> 编辑</button>
														</a>
														<button class="button red" onclick="deleteMove('${entity.move_id}')"><span class="icon-edit"></span> 删除</button>
													</td>
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

	javaex.select({
		id : "style_id",
		isSearch : false
	});
	
	javaex.select({
		id : "type_id2",
		isSearch : false
	});
	
	function deleteMove(id){
		
		$.ajax({
			url : "deleteMove?id="+id,
			type : "GET",
			dataType : "json",
			traditional : "true",
			success : function(rtn) {
				if (rtn.code=="000000") {
					javaex.optTip({
						content : rtn.message
					});
					// 建议延迟加载
					setTimeout(function() {
						// 刷新页面
						window.location.reload();
					}, 2000);
				} else {
					javaex.optTip({
						content : rtn.message,
						type : "error"
					});
				}
			}
		});
	}
	
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
		
		// 文章分类
		var style_id = $("#style_id").val();
		// 关键字检索
		var move_name = $("#move_name").val();
		
		
		window.location.href = "list"
				+ "?pageNum="+pageNum
				+ "&style_id="+style_id
				+ "&move_name="+move_name
				;
	}
	
	// 批量提交按钮点击事件
	$("#submit").click(function() {
		var idArr = new Array();
		$(':checkbox[name="id"]:checked').each(function() {
			idArr.push($(this).val());
		});
		
		// 判断至少选择一条记录
		if (idArr.length==0) {
			javaex.optTip({
				content : "至少选择一条记录",
				type : "error"
			});
			return;
		}
		
		// 判断选择的哪一个单选框进行操作
		var opt = $(':radio[name="radio"]:checked').val();
		if (opt=="move") {
			// 获取目标分类的id
			var typeId = $("#type_id2").val();
			
			$.ajax({
				url : "move.json",
				type : "POST",
				dataType : "json",
				traditional : "true",
				data : {
					"idArr" : idArr,
					"typeId" : typeId
				},
				success : function(rtn) {
					if (rtn.code=="000000") {
						javaex.optTip({
							content : rtn.message
						});
						// 建议延迟加载
						setTimeout(function() {
							// 刷新页面
							window.location.reload();
						}, 2000);
					} else {
						javaex.optTip({
							content : rtn.message,
							type : "error"
						});
					}
				}
			});
		} else if (opt=="recycle") {
			$.ajax({
				url : "update_status.json",
				type : "POST",
				dataType : "json",
				traditional : "true",
				data : {
					"idArr" : idArr,
					"status" : "0"
				},
				success : function(rtn) {
					if (rtn.code=="000000") {
						javaex.optTip({
							content : rtn.message
						});
						// 建议延迟加载
						setTimeout(function() {
							// 刷新页面
							window.location.reload();
						}, 2000);
					} else {
						javaex.optTip({
							content : rtn.message,
							type : "error"
						});
					}
				}
			});
		}
	});
</script>
</html>