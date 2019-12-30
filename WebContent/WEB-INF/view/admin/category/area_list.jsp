<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/view/include/taglib.jsp"%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>地区列表-分类管理-涂涂影院后台管理系统-Powered by Jeenotes! X1.0</title>
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
						<span class="active">地区列表</span>
					</div>
				</div>
				<!--全部主体内容-->
				<div class="list-content">
					<!--块元素-->
					<div class="block">
						<!--页面有多个表格时，可以用于标识表格-->
						<h2>地区列表</h2>
						<!--正文内容-->
						<div class="main-20">
							
							<!--表格上方的操作元素，添加、删除、搜索等-->
							<div class="operation-wrap">
								<div class="buttons-wrap">
									<!-- <a href="edit.action"> -->
										<button id="add" class="button blue"><span class="icon-plus"></span> 添加</button>
										<button id="save" class="button green"><span class="icon-check"></span> 保存</button>
									<!-- </a> -->
									<!-- <a href="delete"> -->
										<button id="delete" class="button red"><span class="icon-plus"></span> 删除</button>
									<!-- </a> -->
								</div>
							</div>
							<table id="table" class="table">
								<thead>
									<tr>
										<th style="width:20px;"><input type="checkbox" class="fill listen-1"/> </th>
										<th style="width:60px;">排序</th>
										<th>地区名称</th>
										<th>是否停用</th>
										<th>操作</th>
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
											<c:forEach items="${videoAreaList}" var="entity" varStatus="status" >
												<tr>
													<td><input type="checkbox" class="fill listen-1-2" name="area_id" value="${entity.area_id}" /> </td>
													<td><input type="text" class="text" name="sort" data-type="正整数" error-msg="必须输入正整数" value="${entity.sort}" /></td>
													<td><input type="text" class="text" name="name" data-type="必填" placeholder="请输入分类名称" value="${entity.name}" /></td>
													<td>
														<%-- <input type="text" class="text" name="enable" data-type="必填" error-msg="必须输入整数" value="${entity.enable}" /> --%>
														<c:if test="${entity.enable=='0'}">未停用</c:if>
														<c:if test="${entity.enable=='1'}">已停用</c:if>
													</td>
													<td>
														<c:if test="${entity.enable=='0'}">
															<%-- <a href="disable?area_id=${entity.area_id}"> --%>
																<button class="button wathet" style="color:red;" onclick="disable('${entity.area_id}');"><span class="icon-close"></span>停用</button>
															<!-- </a> -->
														</c:if>
														<c:if test="${entity.enable=='1'}">
															<%-- <a href="enable?area_id=${entity.area_id}"> --%>
																<button class="button wathet" style="color:green;" onclick="enable('${entity.area_id}');"><span class="icon-check"></span>启用</button>
															<!-- </a> -->
														</c:if>
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
<script type="text/javascript">

//启用
function enable(id){
	//alert(id);
	$.ajax({
		url : "enableArea?area_id="+id,
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
		url : "disableArea?area_id="+id,
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

var idArr = new Array();
var sortArr = new Array();
var nameArr = new Array();

//动态添加tr行
$("#add").click(function() {
	var html = '';
	html += '<tr>';
	html += '<td><input type="checkbox" class="fill listen-1-2" id="area_id" name="area_id" value="${entity.area_id}" /> </td>';
	html += '<td><input type="text" class="text" name="sort" data-type="正整数" error-msg="必须输入正整数" value="${entity.sort}" /></td>';
	html += '<td><input type="text" class="text" name="name" data-type="必填" placeholder="请输入分类名称" value="" /></td>';
	html += '</tr>';
	
	$("#table tbody").append(html);
	// 重新渲染
	javaex.render();
});

//保存按钮点击事件
$("#save").click(function() {
	if (javaexVerify()) {
		idArr = [];
		sortArr = [];
		nameArr = [];
		enableArr = [];
		
		// id
		$(':checkbox[name="area_id"]').each(function() {
			idArr.push($(this).val());
		});
		
		// sort
		$('input[name="sort"]').each(function() {
			sortArr.push($(this).val());
		});
		
		// name
		$('input[name="name"]').each(function() {
			nameArr.push($(this).val());
		});
		
		$.ajax({
			url : "saveArea",
			type : "POST",
			dataType : "json",
			traditional : "true",
			data : {
				"idArr" : idArr,
				"sortArr" : sortArr,
				"nameArr" : nameArr
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

// 点击删除按钮事件
$("#delete").click(function() {
	idArr = [];
	// 1.0 遍历所有被勾选的复选框
	$(':checkbox[name="area_id"]:checked').each(function() {
		// 2.0 添加主键存在的记录
		var id = $(this).val();
		if (id!="") {
			idArr.push(id);
		}
	});
	
	// 判断所勾选的是不是新增的空白记录
	if (idArr.length==0) {
		$(':checkbox[name="area_id"]:checked').each(function() {
			// 前台无刷新去除新增的tr
			$(this).parent().parent().parent().remove();
		});
	} else {
		$.ajax({
			url : "deleteArea",
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

</script>

</html>