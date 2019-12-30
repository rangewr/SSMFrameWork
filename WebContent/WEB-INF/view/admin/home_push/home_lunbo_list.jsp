<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>首页轮播列表</title>
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
						<span>首页管理</span>
						<span class="divider">/</span>
						<span class="active">首页轮播列表</span>
					</div>
				</div>
				<!--全部主体内容-->
				<div class="list-content">
					<!--块元素-->
					<div class="block">
						<!--页面有多个表格时，可以用于标识表格-->
						<h2>首页轮播列表</h2>
						<!--正文内容-->
						<div class="main-20">
							<div style="text-align:right;">
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
										<th>标题</th>
										<th>副标题</th>
										<th>类型</th>
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
													<td><input type="checkbox" class="fill listen-1-2" name="id" value="${entity.banner_id}" /> </td>
													<td>${status.index+1}</td>
													<td>${entity.banner_title}</td>
													<td>${entity.banner_title_sub}</td>
													<td>
														<c:if test="${entity.banner_type=='' || entity.banner_type == null}">空</c:if>
														<c:if test="${entity.banner_type=='1'}">电影</c:if>
														<c:if test="${entity.banner_type=='2'}">电视剧</c:if>
														<c:if test="${entity.banner_type=='3'}">综艺</c:if>
														<c:if test="${entity.banner_type=='4'}">动漫</c:if>
														<c:if test="${entity.banner_type=='5'}">广告</c:if>
													</td>
													<td>${entity.sort}</td>
													<td>
														<c:if test="${entity.enable=='0'}">未停用</c:if>
														<c:if test="${entity.enable=='1'}">已停用</c:if>
													</td>
													<td>
														<a href="edit?banner_id=${entity.banner_id}">
															<button class="button wathet"><span class="icon-edit"></span> 编辑</button>
														</a>
														
														<c:if test="${entity.enable=='0'}">
															<button class="button wathet" style="color:red;" onclick="disable('${entity.banner_id}');"><span class="icon-close"></span>停用</button>
														</c:if>
														
														<c:if test="${entity.enable=='1'}">
															<button class="button wathet" style="color:green;" onclick="enable('${entity.banner_id}');"><span class="icon-check"></span>启用</button>
														</c:if>
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
		
		window.location.href = "list"
				+ "?pageNum="+pageNum;
	}
	
	var idArr = new Array();
	
	// 点击删除按钮事件
	$("#delete").click(function() {
		idArr = [];
		// 1.0 遍历所有被勾选的复选框
		$(':checkbox[name="id"]:checked').each(function() {
			// 2.0 添加主键存在的记录
			var id = $(this).val();
			if (id!="") {
				idArr.push(id);
			}
		});
		
		// 判断所勾选的是不是新增的空白记录
		if (idArr.length==0) {
			$(':checkbox[name="id"]:checked').each(function() {
				// 前台无刷新去除新增的tr
				$(this).parent().parent().parent().remove();
			});
		} else {
			$.ajax({
				url : "delete.json",
				type : "POST",
				dataType : "json",
				traditional : "true",
				data : {
					"idArr" : idArr
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
	
	//启用
	function enable(id){
		//alert(id);
		$.ajax({
			url : "enableBanner?banner_id="+id,
			type : "POST",
			dataType : "json",
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

	//禁用
	function disable(id){
		//console.log("图片链接："+id);
		//alert(id);
		$.ajax({
			url : "disableBanner?banner_id="+id,
			type : "POST",
			dataType : "json",
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
	
	
</script>
</html>