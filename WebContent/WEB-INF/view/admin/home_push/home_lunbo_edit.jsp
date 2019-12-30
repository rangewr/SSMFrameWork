<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/view/include/taglib.jsp"%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>首页轮播添加</title>

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
						<c:if test="${empty banner_id}">
							<span class="active">首页轮播添加</span>
						</c:if>
						<c:if test="${not empty banner_id}">
							<span class="active">首页轮播编辑</span>
						</c:if>
					</div>
				</div>
				<!--全部主体内容-->
				<div class="list-content">
					<!--块元素-->
					<div class="block">
						<!--修饰块元素名称-->
						<div class="banner">
							<c:if test="${empty banner_id}">
								<p class="tab fixed">首页轮播添加<span class="hint">Home Banner Adds</span></p>
							</c:if>
							<c:if test="${not empty banner_id}">
								<p class="tab fixed">首页轮播编辑<span class="hint">Home Banner Editors</span></p>
							</c:if>
						</div>
						<!--正文-->
						<div class="main">
							<!--表单-->
							<form id="form" action="" method="">
								<input type="hidden" name="banner_id" value="${banner_id}" />
								<!--输入框-->
								<div class="unit">
									<div class="left">
										<p class="subtitle">轮播标题</p>
									</div>
									<div class="left">
										<input type="text" class="text" style="width:400px;margin-left:20px;" name="banner_title" data-type="必填" placeholder="请输入轮播标题" value="${homeBanner.banner_title}" />
									</div>
									<!--清浮动-->
									<span class="clearfix"></span>
								</div>
								<!--分割线-->
								<p class="divider"></p>
								
								<!--输入框-->
								<div class="unit">
									<div class="left">
										<p class="subtitle">轮播副标题</p>
									</div>
									<div class="left">
										<input type="text" class="text" style="width:400px;margin-left:20px;" name="banner_title_sub"  placeholder="请输入轮播副标题" value="${homeBanner.banner_title_sub}" />
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
										<input type="text" class="text" style="width:200px;margin-left:20px;" name="sort" data-type="正整数" placeholder="列表排序" value="${homeBanner.sort}" />
									</div>
									<!--清浮动-->
									<span class="clearfix"></span>
								</div>
								<!--分割线-->
								<p class="divider"></p>
								
								<!--下拉选择框-->
								<div class="unit">
									<div class="left">
										<p class="subtitle">轮播类型</p>
									</div>
									<div class="left">
										<select id="banner_type" name="banner_type">
											<option value="1" <c:if test="${homeBanner.banner_type=='1'}">selected</c:if>>电影</option>
											<option value="2" <c:if test="${homeBanner.banner_type=='2'}">selected</c:if>>电视剧</option>
											<option value="3" <c:if test="${homeBanner.banner_type=='3'}">selected</c:if>>综艺</option>
											<option value="4" <c:if test="${homeBanner.banner_type=='4'}">selected</c:if>>动漫</option>
											<option value="5" <c:if test="${homeBanner.banner_type=='5'}">selected</c:if>>广告</option>
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
										<p class="subtitle">轮播封面</p>
									</div>
									<div class="left">
										<!--上传按钮-->
										<a href="javascript:;">
											<!-- 图片承载容器 -->
											<!-- <center> -->
											<label id="container" for="upload" style="display: inline-block; width:360px;height:160px;margin-left:20px;">
												<c:choose>
													<c:when test="${empty homeBanner.image_url}">
														<img src="${ctxStatic}/pc/images/default.png" width="100%" height="100%" />
													</c:when>
													<c:otherwise>
														<img src="${homeBanner.image_url}" width="100%" height="100%" />
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
										<%-- <input type="hidden" id="image_url" name="image_url" value="${homeBanner.image_url}" /> --%>
									</div>
									<!--清浮动-->
									<span class="clearfix"></span>
								</div>
								<!--分割线-->
								<p class="divider"></p>
								
								<!--输入框-->
								<div class="unit">
									<div class="left">
										<p class="subtitle">封面链接</p>
									</div>
									<div class="left">
										<input type="text" class="text" style="width:400px;margin-left:20px;" id="image_url" name="image_url"  value="${homeBanner.image_url}" />
									</div>
									<!--清浮动-->
									<span class="clearfix"></span>
								</div>
								<!--分割线-->
								<p class="divider"></p>
								
								<!--输入框-->
								<div class="unit">
									<div class="left">
										<p class="subtitle">跳转链接</p>
									</div>
									<div class="left">
										<input type="text" class="text" style="width:400px;margin-left:20px;" name="target_url" data-type="必填" placeholder="请输入跳转链接" value="${homeBanner.target_url}" />
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
		id : "banner_type",
		isSearch : false
	});
	
	javaex.upload({
		type : "image",
		url : "${ctx}/admin/video_move/upload",	// 请求路径
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
				$("#image_url").val(imgUrl);
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
				url : "saveHomeBanner",
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
							window.location.href = "${ctx}/admin/home/list";
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