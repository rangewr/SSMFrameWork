<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/view/include/taglib.jsp"%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>连续剧编辑-视频管理-涂涂影院后台管理系统-Powered by Jeenotes! X1.0</title>
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
						<c:if test="${empty video_parent_id}">
							<span class="active">连续剧添加</span>
						</c:if>
						<c:if test="${not empty video_parent_id}">
							<span class="active">连续剧编辑</span>
						</c:if>
					</div>
				</div>
				<!--全部主体内容-->
				<div class="list-content">
					<!--块元素-->
					<div class="block">
						<!--修饰块元素名称-->
						<div class="banner">
							<c:if test="${empty video_parent_id}">
								<p class="tab fixed">连续剧添加<span class="hint">Video Adds</span></p>
							</c:if>
							<c:if test="${not empty video_parent_id}">
								<p class="tab fixed">连续剧编辑<span class="hint">Video Editors</span></p>
							</c:if>
						</div>
						<!--正文-->
						<div class="main">
							<!--表单-->
							<form id="form" action="" method="">
								<input type="hidden" name="video_parent_id" value="${video_parent_id}" />
								<input type="hidden" name="style_id" value="32" />
								<!--输入框-->
								<div class="unit">
									<div class="left">
										<p class="subtitle">连续剧名称</p>
									</div>
									<div class="left">
										<input type="text" class="text" style="width:400px;margin-left:20px;" name="video_parent_name" data-type="必填" placeholder="请输入视频名称" value="${videoParent.video_parent_name}" />
									</div>
									<!--清浮动-->
									<span class="clearfix"></span>
								</div>
								<!--分割线-->
								<p class="divider"></p>
								
								<!--输入框-->
								<div class="unit">
									<div class="left">
										<p class="subtitle">视频排序</p>
									</div>
									<div class="left">
										<input type="text" class="text" style="width:200px;margin-left:20px;" name="sort" data-type="正整数" placeholder="列表排序" value="${videoParent.sort}" />
									</div>
									<!--清浮动-->
									<span class="clearfix"></span>
								</div>
								<!--分割线-->
								<p class="divider"></p>
								
								<!--下拉选择框-->
								<div class="unit">
									<div class="left">
										<p class="subtitle">所属类型</p>
									</div>
									<div class="left">
										<select id="type_id" name="type_id">
											<option value="2" selected>连续剧</option>
										</select>
									</div>
									<!--清浮动-->
									<span class="clearfix"></span>
								</div>
								<!--分割线-->
								<p class="divider"></p>
								
								<!--下拉选择框-->
								<div class="unit">
									<div class="left">
										<p class="subtitle">所属地区</p>
									</div>
									<div class="left">
										<select id="area_id" name="area_id" class="no-shadow">
											<c:forEach items="${areaList}" var="areaInfo" varStatus="status" >
												<option value="${areaInfo.area_id}" <c:if test="${videoParent.area_id==areaInfo.area_id}">selected</c:if>>${areaInfo.name}剧</option>
											</c:forEach>
										</select>
									</div>
									<!--清浮动-->
									<span class="clearfix"></span>
								</div>
								<!--分割线-->
								<p class="divider"></p>
								
								
								<!--下拉选择框-->
								<div class="unit">
									<div class="left">
										<p class="subtitle">所属年份</p>
									</div>
									<div class="left">
										<select id="time_id" name="time_id" class="no-shadow">
											<c:forEach items="${timeList}" var="timeInfo" varStatus="status" >
												<option value="${timeInfo.time_id}" <c:if test="${videoParent.time_id==typeInfo.time_id}">selected</c:if>>${timeInfo.name}</option>
											</c:forEach>
										</select>
									</div>
									<!--清浮动-->
									<span class="clearfix"></span>
								</div>
								<!--分割线-->
								<p class="divider"></p>
								
								<!--下拉选择框-->
								<div class="unit">
									<div class="left">
										<p class="subtitle">上传时间</p>
									</div>
									<div class="left">
										<select id="upload_time" name="upload_time"  class="no-shadow">
											<option value="0" <c:if test="${videoParent.upload_time=='1'}">selected</c:if>>星期一</option>
											<option value="1" <c:if test="${videoParent.upload_time=='2'}">selected</c:if>>星期二</option>
											<option value="2" <c:if test="${videoParent.upload_time=='3'}">selected</c:if>>星期三</option>
											<option value="3" <c:if test="${videoParent.upload_time=='4'}">selected</c:if>>星期四</option>
											<option value="4" <c:if test="${videoParent.upload_time=='5'}">selected</c:if>>星期五</option>
											<option value="5" <c:if test="${videoParent.upload_time=='6'}">selected</c:if>>星期六</option>
											<option value="6" <c:if test="${videoParent.upload_time=='7'}">selected</c:if>>星期日</option>
										</select>
									</div>
									<!--清浮动-->
									<span class="clearfix"></span>
								</div>
								<!--分割线-->
								<p class="divider"></p>
								
								<!--视频封面-->
								<div class="unit">
									<div class="left">
										<p class="subtitle">视频封面</p>
									</div>
									<div class="left">
										<!--上传按钮-->
										<a href="javascript:;">
											<!-- 图片承载容器 -->
											<!-- <center> -->
											<label id="container" for="upload" style="display: inline-block; width:120px;height:150px;">
												<c:choose>
													<c:when test="${empty videoParent.photo}">
														<img src="${ctxStatic}/pc/images/default.png" width="100%" height="100%" />
													</c:when>
													<c:otherwise>
														<img src="${videoParent.photo}" width="100%" height="100%" />
													</c:otherwise>
												</c:choose>
											</label>
											<!-- 上传按钮 -->
											<!-- <input type="file" class="hide" id="upload" accept="image/gif, image/jpeg, image/jpg, image/png" /> -->
											<!--上传按钮-->
											<a href="javascript:;" class="button indigo">
												<label for="upload">上传</label>
												<input type="file" class="hide" id="upload" accept="image/gif, image/jpeg, image/jpg, image/png" />
											</a>
											<!-- </center> -->
										</a>
										<input type="hidden" id="photo" name="photo" value="${videoParent.photo}" />
									</div>
									<!--清浮动-->
									<span class="clearfix"></span>
								</div>
								<!--分割线-->
								<p class="divider"></p>
								
								<div class="unit">
									<div class="left">
										<p class="subtitle">剧情介绍</p>
									</div>
									<div class="right">
										<center>
										<textarea class="text" id="introduce" name="introduce" value="" style="width:80%;height:107px;" placeholder="请填写剧情介绍。">${videoParent.introduce}</textarea>
										<!--提示说明-->
										<p class="hint">请填写剧情介绍。介绍中不得包含令人反感的信息，且长度应在10到255个字符之间。</p>
										</center>
									</div>
									<!--清浮动-->
									<span class="clearfix"></span>
								</div>
								
								<!--分割线-->
								<p class="divider"></p>
								
								
								<!--提交按钮-->
								<div class="unit">
									<div style="margin-left: 200px;">
										<!--表单提交时，必须是input元素，并指定type类型为button，否则ajax提交时，会返回error回调函数-->
										<input type="button" id="return" class="button no" value="返回" />
										<input type="button" id="submit" class="button yes" value="保存" />
									</div>
									<!--清浮动-->
									<span class="clearfix"></span>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
<script>
	javaex.select({
		id : "type_id",
		isSearch : false
	});
	javaex.select({
		id : "area_id",
		isSearch : false
	});
	javaex.select({
		id : "time_id",
		isSearch : false
	});
	javaex.select({
		id : "upload_time",
		isSearch : false
	});
	
	javaex.upload({
		type : "image",
		url : "upload",	// 请求路径
		id : "upload",	// <input type="file" />的id
		param : "file",			// 参数名称，SSM中与MultipartFile的参数名保持一致
		dataType : "url",		// 返回的数据类型：base64 或 url
		callback : function (rtn) {
			// 后台返回的数据
			console.log("返回码："+rtn.code);
			if (rtn.code=="000000") {
				var imgUrl = "${ctxImg}" + rtn.data.imgUrl;
				console.log("图片链接："+imgUrl);
				$("#container img").attr("src", imgUrl);
				$("#photo").val(imgUrl);
			} else {
				javaex.optTip({
					content : rtn.msg,
					type : "error"
				});
			}
		}
	});
	
	
	$("#return").click(function() {
		history.back();
	});
	
	$("#submit").click(function() {
		
		if (javaexVerify()) {
			
			$.ajax({
				url : "saveParent",
				type : "POST",
				dataType : "json",
				data : $("#form").serialize(),
				success : function(rtn) {
					if (rtn.code=="000000") {
						javaex.optTip({
							content : rtn.message
						});
						// 建议延迟加载
						setTimeout(function() {
							// 跳转页面
							window.location.href = "${ctx}/admin/video_tv/listParent";
						}, 2000);
					} else {
						javaex.optTip({
							content : rtn.message,
							type : "error"
						});
					}
				}
			});
			
		}else{
			return false;
		}
		
	});
</script>
</html>