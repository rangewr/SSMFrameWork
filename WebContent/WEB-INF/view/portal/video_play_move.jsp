<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/view/include/taglib.jsp"%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>${videoMove.move_name}-涂涂影院-总有刁民想害朕</title>
<meta name="keywords" content="最新电影、经典桥段、电视新剧、科技、剧场版、无修综艺、唯美动漫。" />
<meta name="description" content="ACG综合视频站——涂涂影院为你开启电影世界的伟大航路！热门电影、经典桥、亲子动画、ACG资讯以及那些人民群众喜闻乐见的高清电影资源应有尽有，宅腐萌燃尽在涂涂影院。" />
<link rel="shortcut icon" href="${ctxStatic}/images/favicon.ico" type="image/x-icon"/>
<script type="text/javascript" src="${ctxStatic}/player/ckplayer/ckplayer.js" charset="UTF-8"></script>
<jsp:include page="/WEB-INF/view/include/resource.jsp"></jsp:include>
</head>

<body>
	<!-- 顶部 -->
	<style>
	button{outline:none;}
	a:link {color: #666}
	a:visited {color: #666}
	.tab-title em{color:#333;}
	.t{width: 460px;height: 62px;line-height: 24px;overflow: hidden;position: absolute;left: 0;bottom: 0;color: #fff;background: url(${ctxStatic}/images/gradient.png) repeat-x;}
	.t1{font-size: 16px;padding: 0;color: #999;display: block;overflow: hidden;height: 80px;line-height: 80px;padding-left: 15px;}
	.t1 a{font-size: 16px;color: #fff;text-decoration: none;}
	.equal-2 > li{position: relative;margin-bottom: 20px;}
	.poly-ul-img{width: 220px;height: 124px;}
	.poly-title{height: 40px;line-height: 45px;background: linear-gradient(transparent,rgba(0,0,0,0.1) 20%,rgba(0,0,0,0.2) 35%,rgba(0,0,0,0.6) 65%,rgba(0,0,0,0.9));font-size: 14px;font-weight: 500;color: #fff;padding: 0 10px;text-overflow: ellipsis;overflow: hidden;white-space: nowrap;position: absolute;bottom: 0;left: 0;width: 200px;}
	.big-cover .screenshot{display: block;width: 460px;height: 312px;position: relative;}
	.cover .screenshot{display: block;width: 200px;height: 124px;position: relative;}
	.poster .screenshot{display: block;width: 180px;height: 240px;position: relative;}
	.screenshot-title a{font-size: 14px;color: #333;text-decoration: none;}
	.big-cover li p, .cover li p, .poster li p{font-size: 12px;color: #999;display: block;overflow: hidden;height: 18px;line-height: 18px;}
	.big-cover li a:hover, .cover li a:hover, .poster li a:hover{color: #2fb3ff;}
	.screenshot-title{margin-top: 8px;}
	.duration{line-height: 18px;height: 18px;position: absolute;bottom: 6px;right: 6px;padding: 0 5px;color: #fff;z-index: 9;background: #000;opacity: .8;-ms-filter: alpha(opacity=50);filter: alpha(opacity=50);font-size: 12px;}
	.big-cover .duration{top: 284px;}
	.equal-6{width: 1440px;}
		
	/* [class^="equal-"] li{width:220px;margin-bottom: 20px;} *//* margin-left:5px; */
		
	.focus-bdaa {height: 60px;line-height: 60px;font-size:30px;font-weight: bold;color:#fff;padding-left:20px;position: absolute;bottom:40px;text-shadow: 0 0 1px #000;}
	.focus-bda {height: 60px;line-height: 60px;font-size:18px;color:#fff;padding-left:20px;position: absolute;bottom: 0;text-shadow: 0 0 1px #000;font-family: helvetica,"微软雅黑","microsoft yahei",verdana,lucida,arial,sans-serif,"黑体";}
		
	.kenan{width: 160px;height: 50px;background: url(${ctxStatic}/images/kn.png) no-repeat 0 0;position: absolute;right: 0;bottom: 0;}
		
	#juchangban p{max-width:210px;}
		
	.tab-content div{overflow: visible;}
	.tab-content div.javaext{width: 360px;height: 62px;line-height: 24px;overflow: hidden;position: absolute;left: 0;bottom: 0;color: #fff;background: url(${ctxStatic}/images/png24.png) repeat-x;}
	.javaextp1{font-size: 22px;color: #fff;display: block;overflow: hidden;height: 24px;line-height: 24px;padding-left: 15px;}
	.javaextp2{height: 20px;line-height: 20px;font-size: 16px;font-weight: 100;position: absolute;bottom: 12px;left: 15px;z-index: 2;overflow: hidden;width: 380px;color: #ddd;}
	.tit-box{height:140px;margin-top: 20px;}
	.tit-box h3{font-size: 20px;line-height: 42px;font-weight: 100;}
	.tit-box p{color: #777;height: 72px;line-height: 24px;overflow: hidden;}
	.tc{margin-top:10px;height: 55px;}
	.tc .tit{padding: 0 14px;width: 192px;font-size: 16px;height: 24px;line-height: 24px;overflow: hidden;}
	.tc .des{padding: 0 14px;width: 192px;font-size: 14px;height: 22px;line-height: 22px;overflow: hidden;color: #999;}
	
	.player{background: url(http://css.ykimg.com/youku/dist/img/find/program/loading_3cc2b8b.gif) no-repeat center center;}
	.block h2 {line-height: 50px;border-bottom: 0;padding-left: 0;} 
	.play-list{width:300px;margin-left: 20px;background: url(http://css.ykimg.com/youku/dist/img/find/program/loading_3cc2b8b.gif) no-repeat center center;}
	.play-list-ul::-webkit-scrollbar {width: 6px;height: 6px;}
	.play-list-ul::-webkit-scrollbar-thumb {background-color: #c2c2c2;background-clip: padding-box;min-height: 28px;}
	.play-list-ul::-webkit-scrollbar-track-piece {background-color: #FFF;}
	.play-list-ul{top: 68px;height: 620px; overflow:auto;}
	.play-info{display: flex;margin-bottom:10px;}
	.play-info-img{width:112px;height: 63px;}
	.play-info-text{width:170px;margin-left: 10px;position: relative;}
	.play-info-title{margin-top: 5px;}
	.play-info-count{position: absolute;bottom: 5px;color:#555;}
	
	.play-list-ul .v-li.drama{padding: 13px 0;padding-left: 15px;background: #242424;border-radius: 2px;margin-bottom: 2px;box-sizing: border-box;}
	.play-list-ul .v-li{cursor: pointer;position: relative;}
	.play-list-ul .v-li .drama-item{display: block;font-size: 14px;margin-right: 28px;overflow: hidden;text-overflow: ellipsis;white-space: nowrap;color:#fff;}
	.play-list-ul .v-li.drama.selected:after{content: "";display: block;position: absolute;top: 0;left: 0;bottom: 0;right: 0;border-radius: 4px;border: 2px solid #2fb3ff;}
	.play-list-ul .v-li.drama:hover{background:#1e1e1e}
	
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
		.yaoqishan-header .top-menu .menu-con .menu-item.home i{position: absolute;width: 17px;height: 14px;left: 14px;top: 12px;display: inline-block;background-image: url(${ctxStatic}/images/home.png);}
		.yaoqishan-header .top-menu .up-load{position: relative;width: 58px;height: 42px;}
		.yaoqishan-header .fr{float: right;}
		.yaoqishan-header .fl, .yaoqishan-header .fr{display: inline;}
		.yaoqishan-header .top-menu .up-load .u-link{display: block;width: 100%;height: 48px;line-height: 42px;text-align: center;font-size: 14px;color: #fff;background-image: url(${ctxStatic}/images/upload.png);}
		.yaoqishan-header .profile-info{width: 58px;}
		.yaoqishan-header .profile-info .i-face{position: absolute;z-index: 20;width: 36px;height: 36px;left: 11px;top: 0;-webkit-transition: .3s;-o-transition: .3s;transition: .3s;}
		.yaoqishan-header .profile-info .i-face .face{border: 0 solid #fff;width: 100%;height: 100%;border-radius: 50%;}
		.yaoqishan-header fieldset, .yaoqishan-header img{border: none;vertical-align: middle;}
		.yaoqishan-header .head-banner{position: relative;z-index: 199;height: 180px;margin-top: -42px;background: #eee;background-repeat: no-repeat;}
		.yaoqishan-header .head-banner .head-content{position: relative;height: 180px;}
		.search{margin-right:0px;float:right;position:relative;z-index: -1;right: 0px;top:5px;width: 200px;height: 32px;padding: 2px 2px 2px 72px;background-color: #e5e9ef;background-color: rgba(0,0,0,.12);border-radius: 6px;font-size: 12px;z-index: 10;}
		.search .searchform{background-color: #fff;background-color: hsla(0,0%,100%,.88);display: block;height: 32px;border-radius: 4px;-webkit-transition: background-color .2s;-o-transition: .2s background-color;transition: background-color .2s;}
		.search .search-keyword{float: left;width: 140px;color: #222;font-size: 12px;overflow: hidden;height: 32px;line-height: 32px;padding: 0 12px;border: 0;-webkit-box-shadow: none;box-shadow: none;background-color: transparent;}
		.search button.search-submit{display: block;position: absolute;right: 0;width: 48px;min-width: 0;cursor: pointer;height: 32px;background: url(${ctxStatic}/images/search-blue.png) center center no-repeat;margin: 0;padding: 0;border: 0;}
		.search .link-ranking{position: absolute;left: 2px;top: 2px;height: 32px;line-height: 32px;background-color: #fff;background-color: hsla(0,0%,100%,.88);border-radius: 4px;width: 68px;-webkit-transition: background-color .2s;-o-transition: .2s background-color;transition: background-color .2s;}
		.search .link-ranking span{padding-left: 26px;color: #f25d8e;display: inline-block;background: url(${ctxStatic}/images/ranking-red.png) 0 center no-repeat;}
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
						<li class="active"><a href="${ctx}/">返回首页</a></li>
						<%-- <li><a href="javascript:void(0);">电影</a></li>
						<li><a href="${ctx}/portal/portalPlay" target="_blank">电视剧</a></li> --%>
						<li><a href="${ctx}/protal/more" target="_blank">获取更多</a></li>
						<li><a href="${ctx}/protal/about" target="_blank">关于涂涂</a></li>
		 				<li><a href="javascript:void(0);" id="login">系统后台</a></li>
							
						<div style="margin-left:10px;">
							<div class="search">
								<div class="searchform">
									<input type="text" id="keyWord" value="" class="search-keyword original" onkeydown="if(event.keyCode==13){search(this.value);}" />
									<button type="button" id="search" class="search-submit"></button>
								</div>
								<a href="#" target="_blank" class="link-ranking"><span>排行榜</span></a>
							</div>
							
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
			$("#login").click(function() {
				javaex.dialog({
					type : "login",	// 弹出层类型
					width : "400",
					height : "320",
					url : "${ctx}/alertLogin"
				});
			});
		</script>
	
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
					window.location.href = "/portal/search.action?keyWord="+ keyWord;
				}
			}
			
			// 打开登录框
			function loginDialog() {
				javaex.dialog({
					type : "login",	
					width : "400",
					height : "320",
					url : "/portal/login"
				});
			}
			
			// 退出登录
			function logout() {
				delCookie("UID");
				delCookie("token");
				window.location.reload();
			}
		</script>
	</div>
	<!-- 顶部结束 -->
	
	<!-- 顶部结束 -->
	
	<!--播放内容-->
	<div style="width:88%; margin: 20px auto;height:550px;">
		<div class="block" style="background-color:#1a1a1a;border-radius: 6px 6px 6px 6px;">
			<!--正文内容-->
			<div class="main-0" style="padding: 0px;height:550px;">
				<div style="display: flex;height:530px;">
				
					<div class="player" style="width:100%;height:520px;">
						<h2 id="video_title" style="color: #fff;padding-left: 20px;">
							<div class="animated bounce">${videoMove.move_name}</div>
						</h2>
						<!-- <div id="player" style="height:500px;margin-right:0px;">
							
						</div> -->
						<iframe width="100%" height="500px" allowTransparency="true" 
						frameborder="0" scrolling="no" 
						src="https://www.ixxplayer.com/video.php?url=${videoMove.play_url}" 
						autoPlay=true ></iframe> 
					</div>

				</div>
			</div>
			
		</div>
		</div>
		
		<div class="grid-6-2 spacing-15" style="width:88%;">
			<div>
				<!--视频介绍-->
				<div class="block" style="border-radius: 6px 6px 6px 6px;">
					<div class="main-20" style="margin-bottom: -20px;">
						<div class="grid-3-20 spacing-20">
							<div style="min-width: 140px;height: 210px;">
								<img id="haibao" src="${videoMove.photo}" width="100%" height="100%" />
							</div>
							<div style="color: #666;position: relative;">
								<h1><a id="biaoti" href="javascript:;">${videoMove.move_name}</a></h1>
								
								<ul class="equal-3" style="margin-top: 20px;">
									<li id="diqu">地区：${videoMove.area_name}</li>
									<li id="nianfen">年份：${videoMove.time_name}</li>
									<li id="zhuangtai">状态：连载中</li><br>
									<li id="fengge" style="margin-top:5px;">风格：${videoMove.style_name}</li>
									<span class="clearfix"></span>
								</ul>
								
								<p id="jianjie" style="margin-top: 10px;">
									简介：${videoMove.introduce}
									<a style="color:#2fb3ff;" href="javascript:;" target="_blank"> 查看详情</a>
								</p>
							</div>
						</div>
					</div>
				</div>
				
				<!--评论-->
				<div class="block" style="border-radius: 6px 6px 6px 6px;">
					<div class="main-20">
						<!-- 评论列表 -->
						<div id="comment" class="comment">
							
						</div>
						
						<!-- 分页 -->
						<div class="page">
							<ul id="page" class="pagination"></ul>
						</div>
					</div>
				</div>
			</div>
			<div>
				<!--相关视频-->
				<div class="block" style="border-radius: 6px 6px 6px 6px;">
					<div class="main-20" style="margin-top: -20px;margin-bottom: -10px;">
						<h2 style="border-bottom: 1px solid #E5E5E5;">相关视频</h2>
						<ul class="play-list-ul" style="margin-top: 20px;">
							
						</ul>
					</div>
				</div>
			</div>
		</div>
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
.alien .feedback a{display: block;height: 57px;background: url(${ctxStatic}/images/feedback_1.png) no-repeat 0 0;margin: 0 auto;}
.alien .feedback a:hover{background: url(${ctxStatic}/images/feedback_2.png) no-repeat 0 0;}
.alien #goTopBtn{display: none;min-width: 29px;height: 65px;cursor: pointer;position: absolute;width: 100%;}
.alien #goTopBtn img{display: inline-block;}
</style>

<!--底部-->
<div class="footer">
  	<ul>
		<li><a href="#" target="_blank"><img src="${ctxStatic}/images/00606MLggw1f9xhpauyn7j304g01hmwz.jpg" /></a></li>
		<li><a href="#" target="_blank"><img src="${ctxStatic}/images/00606MLggw1f9xhpak8v5j304g01hweb.jpg" /></a></li>
		<li><a href="#" target="_blank"><img src="${ctxStatic}/images/00606MLggw1f9xhud8q9kj304g01hmx0.jpg" /></a></li>
		<li><a href="#" target="_blank"><img src="${ctxStatic}/images/00606MLggw1f9xhx80h5bj304g01hdfo.jpg" /></a></li>
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

<script>
	javaex.goTopBtn({
		id : "goTopBtn"
	});
</script>
	
	</div>
	
	
		<script type="text/javascript">
			/* var videoObject = {
					container: '#player',//“#”代表容器的ID，“.”或“”代表容器的class
					variable: 'player',//该属性必需设置，值等于下面的new chplayer()的对象
					autoplay: true, //是否自动播放
					flashplayer:false,//如果强制使用flashplayer则设置成true
					playbackrate:1,//默认速度的编号，只对html5有效,设置成-1则不显示倍速
					drag: 'start', //拖动的属性
					video:'${videoMove.play_url}'//视频地址
 					//video:'http://youku.cdn1-letv.com/20180426/10023_1652662f/index.m3u8'//视频地址 
			};
			var player=new ckplayer(videoObject);
							
			function newElement() {
				//弹幕说明
				var danmuObj = {
					list: [{
						type: 'image', //定义元素类型：只有二种类型，image=使用图片，text=文本
						file: '${ctxStatic}/player/material/logo.png', //图片地址
						radius: 30, //图片圆角弧度
						width: 30, //定义图片宽，必需要定义
						height: 30, //定义图片高，必需要定义
						alpha: 0.9, //图片透明度(0-1)
						marginLeft: 10, //图片离左边的距离
						marginRight: 10, //图片离右边的距离
						marginTop: 10, //图片离上边的距离
						marginBottom: 10, //图片离下边的距离
						clickEvent: "link->http://"
					}, {
						type: 'text', //说明是文本
						text: '演示弹幕内容，弹幕只支持普通文本，不支持HTML', //文本内容
						color: '0xFFDD00', //文本颜色
						size: 14, //文本字体大小，单位：px
						font: '"Microsoft YaHei", YaHei, "微软雅黑", SimHei,"\5FAE\8F6F\96C5\9ED1", "黑体",Arial', //文本字体
						leading: 30, //文字行距
						alpha: 1, //文本透明度(0-1)
						paddingLeft: 10, //文本内左边距离
						paddingRight: 10, //文本内右边距离
						paddingTop: 0, //文本内上边的距离
						paddingBottom: 0, //文本内下边的距离
						marginLeft: 0, //文本离左边的距离
						marginRight: 10, //文本离右边的距离
						marginTop: 10, //文本离上边的距离
						marginBottom: 0, //文本离下边的距离
						backgroundColor: '0xFF0000', //文本的背景颜色
						backAlpha: 0.5, //文本的背景透明度(0-1)
						backRadius: 30, //文本的背景圆角弧度
						clickEvent: "actionScript->videoPlay"
					}],
					x: '100%', //x轴坐标
					y: "50%", //y轴坐标
					//position:[2,1,0],//位置[x轴对齐方式（0=左，1=中，2=右），y轴对齐方式（0=上，1=中，2=下），x轴偏移量（不填写或null则自动判断，第一个值为0=紧贴左边，1=中间对齐，2=贴合右边），y轴偏移量（不填写或null则自动判断，0=紧贴上方，1=中间对齐，2=紧贴下方）]
					alpha: 1,
					//backgroundColor:'#FFFFFF',
					backAlpha: 0.8,
					backRadius: 30 //背景圆角弧度
				}
				var danmu = player.addElement(danmuObj);
				var danmuS = player.getElement(danmu);
				var obj = {
					element: danmu,
					parameter: 'x',
					static: true, //是否禁止其它属性，true=是，即当x(y)(alpha)变化时，y(x)(x,y)在播放器尺寸变化时不允许变化
					effect: 'None.easeOut',
					start: null,
					end: -danmuS['width'],
					speed: 10,
					overStop: true,
					pauseStop: true,
					callBack: 'deleteChild'
				};
				var danmuAnimate = player.animate(obj);
			}
 */
		</script>		
	
</body>

</html>