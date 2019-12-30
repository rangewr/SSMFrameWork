<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/view/include/taglib.jsp"%>
<div id="menu" class="menu" style="width: 260px;">
	<div class="menu-title">
		<h1><i>菜单</i></h1>
	</div>
	<ul>
		<li class="menu-item">
			<a href="javascript:;"><span>视频管理</span><i class="my-icon menu-more"></i></a>
			<ul>
				<li><a href="${ctx}/admin/video_tv/listParent"><span>电视剧列表</span></a></li>
				<li><a href="${ctx}/admin/video_move/list"><span>电影列表</span></a></li>
			</ul>
		</li>
		<li class="menu-item">
			<a href="javascript:;"><span>分类管理</span><i class="my-icon menu-more"></i></a>
			<ul>
				<li><a href="${ctx}/admin/category/type"><span>类型列表</span></a></li>
				<li><a href="${ctx}/admin/category/area"><span>地区列表</span></a></li>
				<li><a href="${ctx}/admin/category/style"><span>风格列表</span></a></li>
				<li><a href="${ctx}/admin/category/time"><span>年份列表</span></a></li>
			</ul>
		</li>
		<li class="menu-item">
			<a href="javascript:;"><span>首页管理</span><i class="my-icon menu-more"></i></a>
			<ul>
				<li><a href="${ctx}/admin/home/list"><span>首页轮播</span></a></li>
				<li><a href="javascript:;"><span>首页公告</span></a></li>
			</ul>
		</li>
		<li class="menu-item">
			<a href="javascript:;"><span>用户中心</span><i class="my-icon menu-more"></i></a>
			<ul>
				<li><a href="${ctx}/admin/exception/list"><span>异常管理</span></a></li>
				<li><a href="${ctx}/admin/kefu/list"><span>客服列表</span></a></li>
				<%-- <li><a href="${ctx}/user/list"><span>菜单设置</span></a></li>
				<li><a href="#"><span>首页公告</span></a></li> --%>
			</ul>
		</li>
		
	</ul>
</div>

<script>
	javaex.menu({
		id : "menu",
		isAutoSelected : true
	});
</script>