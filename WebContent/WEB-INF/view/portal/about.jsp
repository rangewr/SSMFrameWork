<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/view/include/taglib.jsp"%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>关于涂涂-总有刁民想害朕</title>
<meta name="keywords" content="最新电影、经典桥段、电视新剧、科技、剧场版、无修综艺、唯美动漫。" />
<meta name="description" content="ACG综合视频站——涂涂影院为你开启电影世界的伟大航路！热门电影、经典桥、亲子动画、ACG资讯以及那些人民群众喜闻乐见的高清电影资源应有尽有，宅腐萌燃尽在涂涂影院。" />
<link rel="shortcut icon" href="${ctxStatic}/images/favicon.ico" type="image/x-icon"/>
<jsp:include page="/WEB-INF/view/include/resource.jsp"></jsp:include>
<style>
	.header{
		height: 46px;
	}
	.container{
		width: 88%;
		height: 50px;
		line-height: 50px;
		padding: 10px;
		margin: 0 auto;
	}
	.footer .container a{
		color: #ccc;
	}
	#logo > a{
		font-size: 18px;
		color: #666;
	}
	#nav{text-align: right;}
	
	#big-title{
		width: 1170px;
		margin: auto auto;
		height: 330px;
		line-height: 130px;
		text-align: center;
		font-size: 46px;
		color: #fff;
	}
	#content{
		margin: 20px 30px 0;
		-webkit-box-shadow: 0 16px 24px 2px rgba(0, 0, 0, 0.14), 0 6px 30px 5px rgba(0, 0, 0, 0.12), 0 8px 10px -5px rgba(0, 0, 0, 0.2);
		box-shadow: 0 16px 24px 2px rgba(0, 0, 0, 0.14), 0 6px 30px 5px rgba(0, 0, 0, 0.12), 0 8px 10px -5px rgba(0, 0, 0, 0.2);
	}
	.block{margin: 0 auto;box-shadow: none;}
	.img{height: 250px;margin: -15px 15px 0;}
	.img img{width:100%;height: 100%;border-radius: 6px;}
	.nav > li{display: inline-block;}
	.nav > li > a{font-size: 12px;margin: 0 15px;display: block;}
	.nav li a:link{color: #666;}
	.nav li:hover{background:#ededf1;}
	.nav li a:hover, .active > a{color: #06999e;}
	.nav > li:hover .classified-nav{display: block;}
	.classified-nav{position: absolute;top: 48px;left: -40%;z-index: 1000;display: none;float: left;min-width: 140px;padding: 5px 0;margin: 2px 0 0;font-size: 14px;text-align: center;list-style: none;background-color: #fff;-webkit-background-clip: padding-box;background-clip: padding-box;border: 1px solid #ccc;border: 1px solid rgba(0,0,0,.15);border-radius: 4px;-webkit-box-shadow: 0 6px 12px rgba(0,0,0,.175);box-shadow: 0 6px 12px rgba(0,0,0,.175);}input[type="text"]{border:none;}.search{-webkit-box-shadow: none;-moz-box-shadow: none;box-shadow: none;background-image: -webkit-gradient(linear, left top, left bottom, from(#9c27b0), to(#9c27b0)), -webkit-gradient(linear, left top, left bottom, from(#d2d2d2), to(#d2d2d2));background-image: -webkit-linear-gradient(#9c27b0, #9c27b0), -webkit-linear-gradient(#d2d2d2, #d2d2d2);background-image: linear-gradient(#9c27b0, #9c27b0), linear-gradient(#d2d2d2, #d2d2d2);border: 0;border-radius: 0;background-color: transparent;background-repeat: no-repeat;background-position: center bottom, center -webkit-calc(100% - 1px);background-position: center bottom, center calc(100% - 1px);background-size: 0 2px, 100% 1px;-webkit-transition: background 0s ease-out;transition: background 0s ease-out;height: 36px;width: 220px;}.is-focused .search{background-image: -webkit-gradient(linear, left top, left bottom, from(#06999e), to(#06999e)), -webkit-gradient(linear, left top, left bottom, from(#d2d2d2), to(#d2d2d2));background-image: -webkit-linear-gradient(#06999e, #06999e), -webkit-linear-gradient(#d2d2d2, #d2d2d2);background-image: linear-gradient(#06999e, #06999e), linear-gradient(#d2d2d2, #d2d2d2);outline: none;background-size: 100% 2px, 100% 1px;-webkit-transition-duration: 0.3s;transition-duration: 0.3s;}.active{background:#ededf1;color: #06999e;}.content-header{position: relative;}.content-header span{opacity: 0.8;font-size: 16px;}.side-bar{position: fixed; bottom: 12px; right: 10px; z-index: 999; color: #fff; min-width: 50px;}#goTopBtn{display: none;width: 50px;height: 50px;border-radius: 50%;cursor: pointer;text-align: center;background-color: #999;}#goTopBtn > span{font-size: 20px;line-height: 50px;}.block2{margin: 50px 0;font-size: 18px;color: #555;}.content-header p{position: absolute;right: 0;top: 0;color: rgba(0, 0, 0, 0.1);font-family: "Lucida Sans Unicode", "Lucida Grande", sans-serif;font-size: 25px;}blockquote{position: relative;color: #999;font-weight: 400;border-left: 1px solid #06999e;padding-left: 1em;margin: 1em 3em 1em 2em;}
</style>
</head>

<body>

	<div class="header" style="border-radius:0 0 6px 6px ;">
		<div class="header-mask"></div>
		<div>
			<style>

	button{outline:none;}
	a:link {color: #666}
	a:visited {color: #666}
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
/* 	.equal-6{width: 1440px;} */
	/* .equal-5{width: 1107px;} */
		
	[class^="equal-"] li{ /* margin-left:18px; */margin-bottom: 20px;}/* margin-left:5px; */
		
	.imageFocus .hd{width:519px;overflow:hidden;position: absolute;bottom:40px;right:30px;}
	.imageFocus .hd ul{margin-right:-5px;  overflow:hidden; zoom:1;}
	.imageFocus .hd ul li{margin-right:10px;width:64px; height:48px;float:left;  text-align:center;position: relative;overflow: hidden;}
	.imageFocus .hd ul li img{width:60px; height:44px; border:2px solid #fff; cursor:pointer;}
	.imageFocus .hd ul li .mask {position: absolute;width: 100%;height: 100%;top: 0;left: 0; background-color: rgba(255,255,255,0);transition: .2s;z-index: 100;display: block;}
	.imageFocus .hd ul li.on img{border-color:#f25d8e;}
	.imageFocus .hd ul li.on .mask {background-color: rgba(255,255,255,0.3);}
	.imageFocus .bd li{vertical-align:middle; width: 100%;float: left;}
	.imageFocus .bd img{width:100%; height:340px; display:block;}
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
			<div class="yaoqishan-nav" style="border-radius: 6px 6px 6px 6px;">
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
						<li class="active"><a href="javascript:void(0);">关于涂涂</a></li>
						<li><a href="${ctx}/">返回首页</a></li>
						<!-- <li><a href="javascript:void(0);">电影</a></li>
						<li><a href="javascript:void(0);">电视剧</a></li> -->
						<li><a href="${ctx}/protal/more" target="_blank">获取更多</a></li>
						<%-- <li><a href="${ctx}/admin/index" target="_blank">系统后台</a></li> --%>
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
				/* $.ajax({
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
				}); */
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
					window.location.href = "/portal/search.action?keyWord="+ keyWord;
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
			
			// 退出登录
			/* function logout() {
				delCookie("UID");
				delCookie("token");
				window.location.reload();
			} */
		</script>
	</div>
	<!-- 顶部结束 -->
		</div>
	</div>

	<div class="block" style="width:88%;border-radius: 6px 6px 0 0;margin-top:15px;">
		<div class="grid-1-2-1">
			<div></div>
			<div id="main-content" style="min-width: 950px;margin-top: 50px;margin-bottom: 40px;">
				<div class="content-header">
					<p>QQ：879898421</p>
				</div>
					
				<div class="block block2">
					<div class="main-0">
						<p>2018-05-01：</p>
						<blockquote><p>修复电视剧播放界面侧栏切换视频出现容差；暂停WEB端，开始着手手机版涂涂影院开发。</p></blockquote>
							
						<p>2018-04-29：</p>
						<blockquote><p>经过7天的“画饼”总算完成了第一版涂涂影院，目标是7.15之前为纪念正式毕业，发布正式开源版本。</p></blockquote>
					</div>
				</div>
			</div>
			<div></div>
	</div>
		
	<div class="footer" style="background: #323437;">
		<c:import url="footer.jsp"></c:import>
	</div>
</div>

	<!--回到顶部-->
	<div class="side-bar">
		<div id="goTopBtn">
			<span class="icon-arrow_upward"></span>
		</div>
	</div>
</body>
<script>
	$(document).ready(function() {
		// window的高度
		var windowHeight = $(window).height();
		// header的高度
		var headerHeight = $(".header").height();
		// footer的高度
		var footerHeight = $(".footer").height();
		// 内容的高度
		var contentHeight = $("#main-content").height();
		// 差
		var diff = windowHeight - (headerHeight+(contentHeight-60)+footerHeight);
		if (diff>0) {
			$("#main-content").css("margin-bottom", diff-50+"px");
		}
		
		// 监听元素获得焦点事件
		$('input[type="text"]').focus(function() {
			$("#search").addClass("is-focused");
		});

		// 监听元素失去焦点事件
		$('input[type="text"]').blur(function() {
			$("#search").removeClass("is-focused");
		});
	});
	
	function openSearch() {
		$(".nav").hide();
		$("#search").show();
	}
	
	$("#close-search").click(function() {
		$("#search").hide();
		$(".nav").show();
	});
</script>
</html>
