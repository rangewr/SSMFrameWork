<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/view/include/taglib.jsp"%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>涂涂影院-总有刁民想害朕</title>
<meta name="keywords" content="最新电影、经典桥段、电视新剧、科技、剧场版、无修综艺、唯美动漫。" />
<meta name="description" content="ACG综合视频站——涂涂影院为你开启电影世界的伟大航路！热门电影、经典桥、亲子动画、ACG资讯以及那些人民群众喜闻乐见的高清电影资源应有尽有，宅腐萌燃尽在涂涂影院。" />
<link rel="shortcut icon" href="${ctxStatic}/images/favicon.ico" type="image/x-icon"/>
<jsp:include page="/WEB-INF/view/include/resource.jsp"></jsp:include>
</head>
<body>
	<!-- 顶部 -->
	<style>
	button{outline:none;}
	a:link {color: #666}
	a:visited {color: #666}
	
	.unit .left{width:auto;}
	.unit .right{line-height: 28px;font-size: 16px;}
	
	.tab-title em{color:#333;}
	.t{width: 460px;height: 62px;line-height: 24px;overflow: hidden;position: absolute;left: 0;bottom: 0;color: #fff;background: url(http://nonfish.javaex.cn/gradient.png) repeat-x;}
	.t1{font-size: 16px;padding: 0;color: #999;display: block;overflow: hidden;height: 80px;line-height: 80px;padding-left: 15px;}
	.t1 a{font-size: 16px;color: #fff;text-decoration: none;}
	.equal-2 > li{position: relative;margin-bottom: 20px;}
	.big-cover .screenshot{display: block;width: 460px;height: 312px;position: relative;}
	.cover .screenshot{display: block;width: 200px;height: 124px;position: relative;}
	.poster .screenshot{display: block;width: 180px;height: 240px;position: relative;}
	.poster .shuxing{display: block;width: 140px;height: 200px;position: relative;}
	.screenshot-title a{font-size: 14px;color: #333;text-decoration: none;}
	.big-cover li p, .cover li p, .poster li p{font-size: 12px;color: #999;display: block;overflow: hidden;height: 18px;line-height: 18px;}
	.big-cover li a:hover, .cover li a:hover, .poster li a:hover{color: #2fb3ff;}
	.screenshot-title{margin-top: 8px;}
	.duration{line-height: 18px;height: 18px;position: absolute;bottom: 6px;right: 6px;padding: 0 5px;color: #fff;z-index: 9;background: #000;opacity: .8;-ms-filter: alpha(opacity=50);filter: alpha(opacity=50);font-size: 12px;}
	.big-cover .duration{top: 284px;}
	.equal-6{width: 100%;}
		
	[class^="equal-"] li{ /* margin-left:18px; */margin-bottom: 20px;}/* margin-left:5px; */
		
	.focus-bdaa {height: 60px;line-height: 60px;font-size:30px;font-weight: bold;color:#fff;padding-left:20px;position: absolute;bottom:40px;text-shadow: 0 0 1px #000;}
	.focus-bda {height: 60px;line-height: 60px;font-size:18px;color:#fff;padding-left:20px;position: absolute;bottom: 0;text-shadow: 0 0 1px #000;font-family: helvetica,"微软雅黑","microsoft yahei",verdana,lucida,arial,sans-serif,"黑体";}
		
	.kenan{width: 160px;height: 50px;background: url(http://173.javaex.cn/kn.png) no-repeat 0 0;position: absolute;right: 0;bottom: 0;}
		
	#juchangban p{max-width:210px;}
		
</style>

	<!-- 顶部 -->
	<div class="yaoqishan-header">
		
	<style>
		.yaoqishan-header{width:100%;}
		.yaoqishan-header .top-menu{position: relative;z-index: 200;height: 42px;color: #222;}
		.yaoqishan-header .top-menu .scrub{position: absolute;top: 0;left: 0;width: 100%;height: 100%;background-position: center -10px;background-repeat: no-repeat;-webkit-filter: blur(4px);filter: blur(4px);}
		.yaoqishan-header .top-menu .top-mask{position: absolute;top: 0;left: 0;width: 100%;height: 100%;background-color: hsla(0,0%,100%,.4);-webkit-box-shadow: rgba(0,0,0,.1) 0 1px 2px;box-shadow: 0 1px 2px rgba(0,0,0,.1);}
		.yaoqishan-header .yaoqishan-wrapper{margin: 0 auto;width: 88%;}
		.yaoqishan-header .fl{float: left;}
		.yaoqishan-header .top-menu .menu-con .menu-item.home{margin-left: -10px;padding-left: 12px;}
		.yaoqishan-header .top-menu .menu-con .menu-item{float: left;text-align: center;line-height: 42px;height: 42px;position: relative;background-color: hsla(0,0%,100%,0);-webkit-transition: all .3s;-o-transition: all .3s;transition: all .3s;}
		.yaoqishan-header .top-menu .menu-con .menu-item.home a{padding-left: 20px;}
		.yaoqishan-header .top-menu .menu-con .menu-item .title{color: #222;height: 100%;display: block;padding: 0 11px;}
		.yaoqishan-header a{-webkit-transition: color .2s;-o-transition: color .2s;transition: color .2s;}
		.yaoqishan-header .top-menu .menu-con .menu-item.home i{position: absolute;width: 17px;height: 14px;left: 14px;top: 12px;display: inline-block;background-image: url(http://nonfish.javaex.cn/home.png);}
		.yaoqishan-header .top-menu .up-load{position: relative;width: 58px;height: 42px;}
		.yaoqishan-header .fr{float: right;}
		.yaoqishan-header .fl, .yaoqishan-header .fr{display: inline;}
		.yaoqishan-header .top-menu .up-load .u-link{display: block;width: 100%;height: 48px;line-height: 42px;text-align: center;font-size: 14px;color: #fff;background-image: url(http://nonfish.javaex.cn/upload.png);}
		.yaoqishan-header .profile-info{width: 58px;}
		.yaoqishan-header .profile-info .i-face{position: absolute;z-index: 20;width: 36px;height: 36px;left: 11px;top: 0;-webkit-transition: .3s;-o-transition: .3s;transition: .3s;}
		.yaoqishan-header .profile-info .i-face .face{border: 0 solid #fff;width: 100%;height: 100%;border-radius: 50%;}
		.yaoqishan-header fieldset, .yaoqishan-header img{border: none;vertical-align: middle;}
		.yaoqishan-header .head-banner{position: relative;z-index: 199;height: 180px;margin-top: -42px;background: #eee;background-repeat: no-repeat;}
		.yaoqishan-header .head-banner .head-content{position: relative;height: 180px;}
		.search{margin-right:0px;float:right;position:relative;z-index: -1;right: 0px;top:5px;width: 200px;height: 32px;padding: 2px 2px 2px 72px;background-color: #e5e9ef;background-color: rgba(0,0,0,.12);border-radius: 6px;font-size: 12px;z-index: 10;}
		.search .searchform{background-color: #fff;background-color: hsla(0,0%,100%,.88);display: block;height: 32px;border-radius: 4px;-webkit-transition: background-color .2s;-o-transition: .2s background-color;transition: background-color .2s;}
		.search .search-keyword{float: left;width: 140px;color: #222;font-size: 12px;overflow: hidden;height: 32px;line-height: 32px;padding: 0 12px;border: 0;-webkit-box-shadow: none;box-shadow: none;background-color: transparent;}
		.search button.search-submit{display: block;position: absolute;right: 0;width: 48px;min-width: 0;cursor: pointer;height: 32px;background: url(http://nonfish.javaex.cn/search-blue.png) center center no-repeat;margin: 0;padding: 0;border: 0;}
		.search .link-ranking{position: absolute;left: 2px;top: 2px;height: 32px;line-height: 32px;background-color: #fff;background-color: hsla(0,0%,100%,.88);border-radius: 4px;width: 68px;-webkit-transition: background-color .2s;-o-transition: .2s background-color;transition: background-color .2s;}
		.search .link-ranking span{padding-left: 26px;color: #f25d8e;display: inline-block;background: url(http://nonfish.javaex.cn/ranking-red.png) 0 center no-repeat;}
		.yaoqishan-header .head-banner .head-content .head-logo{position: absolute;width: 220px;height: 105px;left: 24px;top: 55px;background: transparent no-repeat 0;z-index: 10;}
		.im-list-box{display: none;font-size: 12px;color: #222;position: absolute;width: 110px;height: 210px;left: calc(50% - 55px) !important;background: #FFF;-webkit-box-shadow: rgba(0, 0, 0, 0.16) 0px 2px 4px;box-shadow: rgba(0, 0, 0, 0.16) 0px 2px 4px;border-radius: 0 0 4px 4px;overflow: hidden;}
		.im-list{display: block;text-align: center;position: relative;line-height: 42px;height: 42px;}
		.im-notify.im-number.im-center{top: 14px;left: 80px;}
		.im-notify.im-number{height: 14px;line-height: 13px;border-radius: 10px;padding: 1px 3px;font-size: 12px;min-width: 20px;text-align: center;color: #fff;}
		.im-notify{position: absolute;background-color: #fb7299;}
		#im-list-box:hover .im-list-box{display: block;}
		.yaoqishan-wrapper ul li:hover a{background: rgba(255,255,255,0.3);}
	</style>
		
	<!--顶部菜单-->
	<div class="top-menu">
		<!--菜单-->
		<div class="yaoqishan-wrapper">
			<!-- 导航 -->
			<div class="yaoqishan-nav">
				<style>
					.yaoqishan-nav{width: 100%;margin: 0 auto;border-bottom: 1px solid #e5e5e5;background: #fff;}
					.yaoqishan-nav .nav{width: 96%;margin: 0 auto;}
					.yaoqishan-nav .nav ul{overflow: hidden;height: 46px;white-space: nowrap;}
					.yaoqishan-nav .nav ul li{float: left;height: 46px;line-height: 46px;margin-right: 35px;}
					.yaoqishan-nav .nav ul li.active a{color: #2fb3ff;line-height: 46px;height: 43px;border-bottom: 3px solid #2fb3ff;}
					.yaoqishan-nav .nav ul li a{display: block;float: left;padding: 0 7px;height: 46px;color: #222;font-size: 16px;transition: none;}
					.yaoqishan-nav .nav #rightMenu p a{
					    display: block;
					    float: left;
					    padding: 0 7px;
					    height: 46px;
					    color: #222;
					    font-size: 16px;
					    transition: none;
					    vertical-align: middle;
					}
				</style>
			
				<!--导航-->
				<div class="nav">
					<ul>
						<li class="active"><a href="${ctx}/protal/more" target="_blank">获取更多</a></li>
						<li><a href="${ctx}/">返回首页</a></li>
						<li><a href="${ctx}/protal/about">关于涂涂</a></li>
						<!-- <li><a href="javascript:void(0);">电影</a></li>
						<li><a href="javascript:void(0);">电视剧</a></li> -->
						<li><a href="javascript:void(0);" onclick="loginDialog();" id="login">系统后台</a></li>
							
						<div style="margin-left:10px;">
							<div class="search">
								<div class="searchform">
									<input type="text" id="keyWord" value="" class="search-keyword original" onkeydown="if(event.keyCode==13){search(this.value);}" />
									<button type="button" id="search" class="search-submit"></button>
								</div>
								<a href="#" target="_blank" class="link-ranking"><span>排行榜</span></a>
							</div>
							<a href="#" class="head-logo" style="background-image: url(${ctxStatic}/pc/images/logo.png);"></a>
						</div>
					</ul>
				</div>
			</div>
			<!-- 导航结束 -->		
				
		</div>
		<!--菜单结束 -->
	</div>
	<!-- 顶部菜单结束 -->
	
		<script>
			$(function() {
				// 获取用户信息
				$.ajax({
					url : "/user_info/get_login_user.json",
					type : "POST",
					dataType : "json",
					async : "false",
					data : {
						token : getCookie("token")
					},
					success : function(rtn) {
						if (rtn.code=="000000") {
							var userInfo = rtn.data.userInfo;
							$("#im-login").hide();
							$("#im-register").hide();
							$("#im-avatar").show();
							$("#im-list-box").show();
							
							// 允许评论
							$("#comment").addClass("blue");
							$("#comment").removeClass("disable");
							$("#comment").attr("disabled", false);
						}
					}
				});
			});
		
			$("#search").click(function() {
				// 关键词检索
				var keyWord = $("#keyWord").val();
				search(keyWord);
			});
		
			function search(keyWord) {
				// 判断关键词是否为空
				keyWord = keyWord.replace(/(^\s*)|(\s*$)/g, "");
				if (keyWord!="") {
					keyWord = keyWord.replace(":", "：");
					window.location.href = "/portal/search?keyWord="+ keyWord;
				}
			}
			
			// 打开登录框
			function loginDialog() {
				javaex.dialog({
					type : "login",	// 弹出层类型
					width : "400",
					height : "320",
					url : "${ctx}/alertLogin"
				});
			}
			
		</script>
	</div>
	<!-- 顶部结束 -->
	<!-- 顶部结束 -->
	
	<!--内容TODO-->
	<div style="width: 88%; margin: 20px auto;">
	
		<!-- 分类筛选开始 -->
		<div class="block">
			<!--修饰块元素名称-->
			<div class="banner">
				<p class="tab fixed">分类筛选<span class="hint">Classification and screening</span></p>
			</div>
			<!--分类筛选字段-->
			<div id="filter" class="main-30" style="margin-top:-10px;">
				
					<div class="unit">
						<div style="float:left;width:auto;">
							<p class="subtitle">类型</p>
							
						</div>
						<div class="right" style="float:left;">
							<ul id="'+list[i].type_id+'" class="equal-15">
								<li class="on" value="">全部</li>
								<li value="1">电影</li>
								<li value="2">电视</li>
								<li value="3">综艺</li>
								<li value="4">动漫</li>
								<span class="clearfix"></span>
							</ul>
						</div>
						<span class="clearfix"></span>
					</div>
					<p class="divider"></p>
				
					<div class="unit">
						<div class="left">
							<p class="subtitle">地区</p>
						</div>
						<div class="right">
							<ul id="'+list[i].area_id+'" class="equal-15">
								<li class="on" value="">全部</li>
								<li value="11">国产</li>
								<li value="12">美国</li>
								<li value="13">日本</li>
								<li value="14">韩国</li>
								<li value="15">香港</li>
								<li value="16">印度</li>
								<li value="17">台湾</li>
								<span class="clearfix"></span>
							</ul>
						</div>
						<span class="clearfix"></span>
					</div>
					<p class="divider"></p>
				
					<div class="unit">
						<div class="left">
							<p class="subtitle">风格</p>
						</div>
						<div class="right">
							<ul id="'+list[i].style_id+'" class="equal-15">
								<li class="on" value="">全部</li>
								<li value="31">动作</li>
								<li value="32">喜剧</li>
								<li value="33">爱情</li>
								<li value="34">科幻</li>
								<li value="35">战争</li>
								<li value="36">伦理</li>
								<li value="37">恐怖</li>
								<span class="clearfix"></span>
							</ul>
						</div>
						<span class="clearfix"></span>
					</div>
					<p class="divider"></p>
				
					<div class="unit">
						<div class="left">
							<p class="subtitle">年份</p>
						</div>
						<div class="right">
							<ul id="'+list[i].time_id+'" class="equal-15">
								<li class="on" value="">全部</li>
								<li value="51">2018</li>
								<li value="52">2017</li>
								<li value="53">2016</li>
								<li value="54">2015</li>
								<li value="55">2014</li>
								<li value="56">2013</li>
								<li value="57">2012</li>
								<li value="58">2011</li>
								<li value="59">2010</li>
							</ul>
						</div>
						<span class="clearfix"></span>
					</div>
					<!-- <p class="divider"></p> -->
				
			</div>
		</div>
		<script>
			var filterArr = new Array();
		
			javaex.filter({
				selector : ".unit .right ul",
				// 点击后，返回一个回调函数（初始化也会调用）
				callback: function (rtn) {
					console.log(rtn);
					filterArr = rtn;
					getMediaLisByFilter(filterArr, 1);
				}
			});
			
			// 根据筛选结果，请求媒体数据
			function getMediaLisByFilter(filterArr, pageNum) {
				console.log("aaaaa");
				// 预设加载动画
				/* var html = '';
				html += '<div class="main-0" style="margin-bottom: -20px;height:400px;background: url(http://css.ykimg.com/youku/dist/img/find/program/loading_3cc2b8b.gif) no-repeat center center;">';
				html += '</div>';

				$("#juchangban").empty();
				$("#juchangban").append(html);  */
				
				$.ajax({
					url : "${ctx}/api/more",
					type : "POST",
					dataType : "json",
					traditional : "true",
					data : {
						"filterArr" : filterArr,
						"pageNum" : pageNum
					},
					success : function(rtn) {
						if (rtn.code=="999999") {
							getMediaLisByFilter(filterArr, pageNum);
							return;
						}
						var pageInfo = rtn.data.pageInfo;
						var list = pageInfo.list;
						var currentPage = pageInfo.pageNum;
						var pageCount = pageInfo.pages;
						console.log("currentPage:"+currentPage);
						console.log("pageCount:"+pageCount);
						var type = rtn.data.type;
						
						var html = '';
						for (var i=0; i<list.length; i++) {
							html += '<li style="max-width:160px;">';
							if(type == 1){
								html += '<a href="${ctx}/protal/movePlay?move_id='+list[i].move_id+'" target="_blank" class="shuxing">';
								html += '<img src="'+list[i].photo+'" width="100%" height="100%">';
								html += '</a>';
								html += '<p class="screenshot-title"><a href="${ctx}/protal/movePlay?move_id='+list[i].move_id+'" target="_blank">'+list[i].move_name+'</a></p>';
							}else{
								html += '<a href="${ctx}/protal/tvPlay?tv_id='+list[i].video_parent_id+'" target="_blank" class="shuxing">';
								html += '<img src="'+list[i].photo+'" width="100%" height="100%">';
								html += '</a>';
								html += '<p class="screenshot-title"><a href="${ctx}/protal/tvPlay?tv_id='+list[i].video_parent_id+'" target="_blank">'+list[i].video_parent_name+'</a></p>';
							}
							html += '</li>';
						}
						html += '<span class="clearfix"></span>';
						// 先清空
						$("#juchangban").empty();
						// 再填充
						$("#juchangban").append(html);
						javaex.render();
						
						$("#page").empty();
						javaex.page({
							id : "page",
							pageCount : pageCount,	// 总页数
							currentPage : currentPage,// 默认选中第几页
							// 返回当前选中的页数
							callback:function(rtn) {
								getMediaLisByFilter(filterArr, rtn.pageNum);
							}
						});
					}
				});
			}

		</script>
		<!-- 分类筛选结束 -->
	
		<!--查询列表-->
		<div class="block" style="width:100%;">
			<!--正文内容-->
			<div class="main-20" style="height:auto;">
				<ul id="juchangban" class="equal-6 poster list-content" style="margin-top:-5px;">
				</ul>
			</div>
		</div>
		<!-- 查询列表结束 -->
		
	</div>
	
	<!--底部-->
	<div class="yaoqishan-footer">
		
	<style>
		.yaoqishan-footer{background:url("${ctxStatic}/images/00606MLggw1f9xhn30iqgj318g096judg.png") 50% 0 no-repeat #ffffff;height:330px;}
		.yaoqishan-footer .footer{width:100%;margin:0 auto;position:relative;z-index:1}
		.yaoqishan-footer ul{position:absolute;top:230px;left:170px;}
		.yaoqishan-footer ul li{float:left;margin-right:2px;}
		
		/*回到顶部*/
		.alien{position: fixed;bottom: 12px;right: 10px;z-index: 99999;color: #fff;padding-bottom: 65px;min-width: 50px;}
		.alien .feedback{margin-bottom: 15px;}
		.alien div{text-align: center;}
		.alien .feedback a{display: block;height: 57px;background: url(http://nonfish.javaex.cn/feedback_1.png) no-repeat 0 0;margin: 0 auto;}
		.alien .feedback a:hover{background: url(http://nonfish.javaex.cn/feedback_2.png) no-repeat 0 0;}
		.alien #goTopBtn{display: none;min-width: 29px;height: 65px;cursor: pointer;position: absolute;width: 100%;}
		.alien #goTopBtn img{display: inline-block;}
	</style>

	<!--底部-->
	<div class="footer">
	  	<ul>
			<li><a href="#" target="_blank"><img src="http://nonfish.javaex.cn/00606MLggw1f9xhpauyn7j304g01hmwz.jpg" /></a></li>
			<li><a href="#" target="_blank"><img src="http://nonfish.javaex.cn/00606MLggw1f9xhpak8v5j304g01hweb.jpg" /></a></li>
			<li><a href="#" target="_blank"><img src="http://nonfish.javaex.cn/00606MLggw1f9xhud8q9kj304g01hmx0.jpg" /></a></li>
			<li><a href="#" target="_blank"><img src="http://nonfish.javaex.cn/00606MLggw1f9xhx80h5bj304g01hdfo.jpg" /></a></li>
		</ul>
	</div>

	<!--回到顶部-->
	<div class="alien">
		<div class="feedback">
			<a href="#" target="_blank"></a>
		</div>
		<div id="goTopBtn">
			<img width="29" height="65" src="${ctxStatic}/images/05100000575CCAF767BC3D4B250267B7.gif">
		</div>
	</div>

	</div>
	<!-- 底部结束 -->
	
</body>
<script>
		javaex.goTopBtn({
			id : "goTopBtn"
		});
	</script>
<script>
	$(function() {
		
		// 电视连续剧
		//loadData("tab1_1", "${ctx}/api/tv?time=0");
		
		// 最新电影
		//getMoveData();
	});
	
	// 加载数据
	function loadData(id, api) {
		$.ajax({
			url : api,
			type : "POST",
			dataType : "json",
			async : "false",
			success : function(rtn) {
				console.log("返回码"+rtn.code);
				if (rtn.code!="000000") {
					loadData(id, api);
					return;
				}
				var list = rtn.data.list;
				console.log("返回大小:"+list.length);
				console.log("要追加的id:"+id);
				if (list.length>0) {
					var html = '';
					for (var i=0; i<list.length; i++) {
						
						html += '<li style="max-width:180px;">';
						html += '<a href="${ctx}/protal/tvPlay?tv_id='+list[i].video_parent_id+ '"  target="_blank" class="shuxing">';
						html += '<span class="duration">更新至第'+list[i].child_count+'集</span>';
						html += '<img src="'+list[i].photo+'" width="100%" height="100%">';
						html += '</a>';
						html += '<p class="screenshot-title"><a href="${ctx}/protal/tvPlay?tv_id='+list[i].video_parent_id+'" target="_blank">'+list[i].video_parent_name+'</a></p>';
						html += '</li>';
						
					}
					 html += '<span class="clearfix"></span>'; 
					//console.log("html:"+html);
					$("#"+id).append(html);
					javaex.render();
				}
			}
		});
	}
	
	// 剧场版
	function getMoveData() {
		$.ajax({
			url : "${ctx}/api/move",
			type : "POST",
			dataType : "json",
			async : "false",
			success : function(rtn) {
				if (rtn.code!="000000") {
					getTheaterData();
					return;
				}
				var list = rtn.data.list;
				if (list.length>0) {
					var html = '';
					for (var i=0; i<list.length; i++) {
						html += '<li style="max-width:160px;">';
						html += '<a href="${ctx}/protal/movePlay?move_id='+list[i].move_id+'" target="_blank" class="shuxing">';
						html += '<img src="'+list[i].photo+'" width="100%" height="100%">';
						html += '</a>';
						html += '<p class="screenshot-title"><a href="${ctx}/protal/movePlay?move_id='+list[i].move_id+'" target="_blank">'+list[i].move_name+'</a></p>';
						html += '</li>';
					}
					html += '<span class="clearfix"></span>';
					$("#juchangban").append(html);
					javaex.render();
				}
			}
		});
	}
</script>
</html>