<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>下级视频列表-视频管理-涂涂影院后台管理系统-Powered by Jeenotes! X1.0</title>
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
						<span>连续剧列表</span>
						<span class="divider">/</span>
						<span class="active">下级视频列表</span>
					</div>
				</div>
				<!--全部主体内容-->
				<div class="list-content">
					<!--块元素-->
					<div class="block">
						<!--页面有多个表格时，可以用于标识表格-->
						<h2>下级视频列表</h2>
						<!--正文内容-->
						<div class="main-20">
							<input type="hidden" name="video_parent_id" value="${video_parent_id}" />
							<!--表格上方的操作元素，添加、删除、搜索等-->
							<div class="operation-wrap">
								<div class="buttons-wrap">
									<a href="editChild?video_parent_id=${video_parent_id}">
										<button id="add" class="button blue"><span class="icon-plus"></span> 添加</button>
									</a>
									<a href="delete">
										<button id="delete" class="button red"><span class="icon-plus"></span> 删除</button>
									</a>
										<button id="return" class="button navy"><span class="icon-arrow_back"></span> 返回</button>
								</div>
							</div>
							<table id="table" class="table">
								<thead>
									<tr>
										<th style="width:20px;"><input type="checkbox" class="fill listen-1"/> </th>
										<th style="width:60px;">序号</th>
										<th>视频名称</th>
										<th>排序</th>
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
													<td><input type="checkbox" class="fill listen-1-2" name="id" value="${entity.video_child_id}" /> </td>
													<td>${status.index+1}</td>
													<td>${entity.video_child_name}</td>
													<td>${entity.sort}</td>
													<td>
														<c:if test="${entity.enable=='0'}">未停用</c:if>
														<c:if test="${entity.enable=='1'}">已停用</c:if>
													</td>
													<td>
														<a href="editChild?video_child_id=${entity.video_child_id}&video_parent_id=${entity.video_parent_id}">
															<button class="button wathet"><span class="icon-edit"></span> 编辑</button>
														</a>
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

	javaex.select({
		id : "type_id",
		isSearch : false
	});
	javaex.select({
		id : "upload_time",
		maxNum: 8,
		isSearch : false
	});
	
	javaex.select({
		id : "type_id2",
		isSearch : false
	});
	
	var startDate = "";
	var endDate = "";
	javaex.date({
		id : "date2",		// 承载日期组件的id
		monthNum : 2,	// 2代表选择范围日期
		alignment : "right",
		startDate: "${startDate}",	// 开始日期
		endDate: "${endDate}",	// 结束日期
		// 重新选择日期之后返回一个时间对象
		callback: function (rtn) {
			startDate = rtn.startDate;
			endDate = rtn.endDate;
		}
	});
	
	javaex.page({
		id : "page",
		pageCount : pageCount,	// 总页数
		currentPage : currentPage,// 默认选中第几页
		// 返回当前选中的页数
		callback:function(rtn) {
			console.log("rtn:"+rtn.pageNum);
			search(rtn.pageNum);
		}
	});
	
	function search(pageNum) {
		console.log("pageNum:"+pageNum);
		if (pageNum==undefined) {
			pageNum = 1;
		}
		
		// 文章分类
		var type_id = $("#type_id").val();
		// 关键字检索
		var video_parent_name = $("#video_parent_name").val();
		
		var upload_time = $("#upload_time").val();
		
		window.location.href = "listParent"
				+ "?pageNum="+pageNum
				+ "&type_id="+type_id
				+ "&upload_time="+upload_time
				+ "&video_parent_name="+video_parent_name
				;
	}
	
	$("#return").click(function() {
		history.back();
	});
	
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