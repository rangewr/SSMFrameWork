<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%-- <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%> --%>
<%@ include file="/WEB-INF/view/include/taglib.jsp"%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>涂涂影院后台管理系统-Powered by Jeenotes! X1.0</title>
<link rel="shortcut icon" href="${ctxStatic}/images/favicon.ico" type="image/x-icon"/>
</head>

<body>
	<div class="wrap">
		<!--头部-->
		<div id="header">
			<c:import url="header.jsp"></c:import>
		</div>
		
		<!-- 左侧菜单和主体内容 -->
		<div class="grid-1-7" style="flex: 1;margin:0;">
			<c:import url="menu.jsp"></c:import>
			
			<div class="content">
				<!--内容区域-->
				<div class="list-content">
					<!--块元素-->
					<div class="block">
						<!--banner用来修饰块元素的名称-->
						<div class="banner">
							<p class="tab fixed">基本信息<span class="hint">Basic Information</span></p>
						</div>
						<!--正文内容-->
						<div class="main">
							<div class="basic-info">
								<div class="float-left left">
									<a href="#">
										<img id="personal-avatar-img" src="${ctxStatic}/pc/images/user.jpg" class="avatar">
									</a>
								</div>
								<div class="float-left right">
									<a id="personal-name" href="#" class="name">niceyoo</a>
									<span id="personal-uid">Uid:4242293</span>
									<a href="#" target="_blank" class="user-group">正式会员</a>
									<a href="#" style="margin-left: 12px;">[升级为VIP会员]</a>
									<p id="hint-reg-personal">注册于 2018年4月20日(星期五) 9时27分</p>
									<label id="personality-signature">这个人很懒，什么都没有写...
									</label>
								</div>
								<span class="clearfix"></span>
							</div>
							<p class="divider"></p>
							<div>
								<div class="float-left">
									<button class="button navy">修改头像</button>
									<button class="button indigo">修改个性签名</button>
								</div>
								<div class="float-right">
									<button class="button navy">修改密码</button>
								</div>
								<span class="clearfix"></span>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>