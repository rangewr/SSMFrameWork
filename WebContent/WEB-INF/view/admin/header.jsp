<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/view/include/taglib.jsp"%>
<link href="${ctx}/static/pc/css/icomoon.css" rel="stylesheet" />
<link href="${ctx}/static/pc/css/animate.css" rel="stylesheet" />
<link href="${ctx}/static/pc/css/style.css" rel="stylesheet" />
<link rel="shortcut icon" href="${ctxStatic}/images/favicon.ico" type="image/x-icon"/>
<script src="${ctx}/static/pc/lib/jquery-1.7.2.min.js"></script>
<script src="${ctx}/static/pc/js/common.js"></script>
<script src="${ctx}/static/pc/js/javaex.min.js"></script>
<script src="${ctx}/static/pc/js/javaex-formVerify.js"></script>

<!--左侧logo-->
<div>
	<a href="#">
		<img class="logo-img" style="top: 25%;left:1%;height:30px;text-align:center;margin:auto;" src="${ctx}/static/pc/images/logo.png">
	</a>
</div>
<!--右侧功能-->
<ul class="pull-right header-right">
	<li>
		<p class="pull-left margin-left-10">欢迎您，<span>管理员</span></p>
		<label class="margin-left-10 margin-right-10">|</label>
		<a href="${ctx}/logout">退出</a>
	</li>
	<li>
		<a href="${ctx}"><span class="icon-home" style="font-size:18px;color:red;"></span></a>
	</li>
</ul>