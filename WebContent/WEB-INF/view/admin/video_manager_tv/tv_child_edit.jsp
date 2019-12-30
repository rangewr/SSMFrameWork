<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/view/include/taglib.jsp"%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>下级视频编辑-视频管理-涂涂影院后台管理系统-Powered by Jeenotes! X1.0</title>
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
						<span>视频列表</span>
						<span class="divider">/</span>
						<c:if test="${empty video_child_id}">
							<span class="active">下级视频添加</span>
						</c:if>
						<c:if test="${not empty video_child_id}">
							<span class="active">下级视频编辑</span>
						</c:if>
					</div>
				</div>
				<!--全部主体内容-->
				<div class="list-content">
					<!--块元素-->
					<div class="block">
						<!--修饰块元素名称-->
						<div class="banner">
							<c:if test="${empty video_child_id}">
								<p class="tab fixed">下级视频添加<span class="hint">Video Adds</span></p>
							</c:if>
							<c:if test="${not empty video_child_id}">
								<p class="tab fixed">下级视频编辑<span class="hint">Video Editors</span></p>
							</c:if>
						</div>
						<!--正文-->
						<div class="main">
							<!--表单-->
							<form id="form" action="" method="">
								<input type="hidden" name="video_child_id" value="${video_child_id}" />
								<c:if test="${empty video_parent_id}">
									<input type="hidden" name="video_parent_id" id="video_parent_id" value="${videoChildren.video_parent_id}" />
								</c:if>
								<c:if test="${empty videoChildren.video_parent_id}">
									<input type="hidden" name="video_parent_id" id="video_parent_id" value="${video_parent_id}" />
								</c:if>
								
								<!--输入框-->
								<div class="unit">
									<div class="left">
										<p class="subtitle">视频名称</p>
									</div>
									<div class="left">
										<input type="text" class="text" style="width:400px;margin-left:20px;" name="video_child_name" data-type="必填" placeholder="请输入视频名称" value="${videoChildren.video_child_name}" />
									</div>
									<!--清浮动-->
									<span class="clearfix"></span>
								</div>
								<!--分割线-->
								<p class="divider"></p>
								
								<!--输入框-->
								<div class="unit">
									<div class="left">
										<p class="subtitle">播放链接</p>
									</div>
									<div class="left">
										<input type="text" class="text" style="width:400px;margin-left:20px;" name="play_url" data-type="必填" placeholder="请输入播放链接" value="${videoChildren.play_url}" />
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
										<input type="text" class="text" style="width:200px;margin-left:20px;" name="sort" data-type="正整数" placeholder="列表排序" value="${videoChildren.sort}" />
									</div>
									<!--清浮动-->
									<span class="clearfix"></span>
								</div>
								<!--分割线-->
								<p class="divider"></p>
								
								
								<!--输入框-->
								<div class="unit">
									<div class="left">
										<p class="subtitle">播放次数</p>
									</div>
									<div class="left">
										<input type="text" class="text" style="width:200px;margin-left:20px;" name="play_number" data-type="正整数" placeholder="播放次数" value="${videoChildren.play_number}" />
									</div>
									<!--清浮动-->
									<span class="clearfix"></span>
								</div>
								<!--分割线-->
								<p class="divider"></p>
								
								<!-- 评论列表 -->
								<div class="unit">
									<div class="left">
										<p class="subtitle">评论列表</p>
									</div>
									<div class="right">
										<center>
										<textarea class="text" id="remark" name="remark" value="" style="width:80%;height:107px;" placeholder="视频评论。">${videoChildren.remark}</textarea>
										<!--提示说明-->
										<p class="hint">视频评论列表格式：用户名@评论内容_</p>
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
	
	$("#return").click(function() {
		history.back();
	});
	
	$("#submit").click(function() {
		
		if (javaexVerify()) {
			
			$.ajax({
				url : "saveChild",
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
							var video_parent_id = $("#video_parent_id").val();
							window.location.href = "${ctx}/admin/video_tv/listChild?video_parent_id="+video_parent_id;
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