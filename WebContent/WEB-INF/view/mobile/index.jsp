<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%-- <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%> --%>
<%@ include file="/WEB-INF/view/include/taglib.jsp"%>

<!DOCTYPE html>
<html lang="zh-CN">
<head>
	<meta charset="utf-8" />
	<meta http-equiv="Cache-Control" content="no-siteapp" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="renderer" content="webkit">
    <meta name="viewport" content="width=device-width,initial-scale=1.0,user-scalable=no,minimal-ui">
	<title>在线影院 - 手机在线看电影,你的口袋影院,无需播放器的电影网站神马都能看 - </title>
	<meta name="keywords" content="" />
    <meta name="description" content="" />
    	<link rel="shortcut icon" type="image/ico" href="${ctxStatic}/images/favicon.ico"/>
	<link rel="stylesheet" href="${ctxStatic}/m2/css/main.css" />
	<link rel="stylesheet" href="${ctxStatic}/m2/css/swiper.min.css" />
	<!-- <script type="text/javascript">document.write("<script src='/config/config.js?r="+Math.random()+"'></s"+"cript>")</script> -->
	<script type="text/javascript" src="${ctxStatic}/m2/js/mweitv.js"></script>	
	<script type="text/javascript" src="${ctxStatic}/m2/js/return.js"></script>	
	<script type="text/javascript" src="${ctxStatic}/m2/js/zepto.min.js"></script>
	<script type="text/javascript" src="${ctxStatic}/m2/js/aui-plug.js" ></script>
	<script type="text/javascript" src="${ctxStatic}/m2/js/iconfont.js" ></script>
    <script>var SitePath='/',SiteAid='10',SiteTid='',SiteId='';</script>
	<script src="https://cdn.bootcss.com/jquery/3.3.1/jquery.min.js"></script>
	<script src="https://cdn.bootcss.com/jquery-cookie/1.4.1/jquery.cookie.js"></script>
</head>
<!-- 头部  --> 
<body> 
<section class="header">
	<header class="header-bar header-bar-nav" id="aui-header">
		<font style="float: left;margin-left: 10px;">在线影院</font>
			
	    <a href="/" class="pull-right header-btn" tapmode onclick="showDefault('loading')">
			<span class="iconfont icon-home"></span>
        </svg>
		</a>
	    <a href="/vod-search.html" class="pull-right header-btn" tapmode onclick="showDefault('loading')">
			<span class="iconfont icon-search"></span>
        </svg>
	    </a>
	</header>
</section>
<section class="header-nav">
	<div class="nav-wrap">
		<div class="shadow-l"></div>
		<div class="shadow-r"></div>
	    <div class="wrap">			
			<ul class="swiper-wrapper clearfix" id="nav">
				<li  class="active"><a href="/" tapmode onclick="showDefault('loading')">首页</a></li>
	           
                <li  tapmode onclick="showDefault('loading')"><a href="/vod/1.html">电影</a></li>
                
                <li  tapmode onclick="showDefault('loading')"><a href="/vod/2.html">电视</a></li>
                
                <li  tapmode onclick="showDefault('loading')"><a href="/vod/3.html">综艺</a></li>
                
                <li  tapmode onclick="showDefault('loading')"><a href="/vod/4.html">动漫</a></li>
                
			</ul>
		</div>
	</div>
	<div class="nav-wrap-more">
		<div class="more">
		    <a href="/vod_map.html" rel="nofollow" ><svg class="icon" aria-hidden="true">
             <use xlink:href="#icon-list"></use>
        </svg></a>
		</div>
	</div>
</section>
<section class="channel">
<!--幻灯片 -->
 		<section class="ibanner">
			<div class="swiper-container" >
			<div class="swiper-wrapper">
				
				<div class="swiper-slide swiper-slide-center none-effect"><a href="/show/46014.html" ><img src="http://wx3.sinaimg.cn/mw690/0060lm7Tly1fq93hp8a1sj30j608778z.jpg" class="thumb" /><p>&nbsp;《三国机密之潜龙在渊》&nbsp;更新至42集</p></a></div>
				
				<div class="swiper-slide swiper-slide-center none-effect"><a href="/show/46092.html" ><img src="http://wx2.sinaimg.cn/mw690/0060lm7Tly1fq93r09povj30j6087td7.jpg" class="thumb" /><p>&nbsp;《远大前程》&nbsp;全48集</p></a></div>
				
				<div class="swiper-slide swiper-slide-center none-effect"><a href="/show/46344.html" ><img src="http://wx1.sinaimg.cn/mw690/0060lm7Tly1fqkpfyotxnj30j6087jz7.jpg" class="thumb" /><p>&nbsp;《21克拉》&nbsp;清晰版</p></a></div>
				
				<div class="swiper-slide swiper-slide-center none-effect"><a href="/show/44922.html" ><img src="http://wx3.sinaimg.cn/mw690/0060lm7Tly1fqbl6g1ogwj30j6087dnb.jpg" class="thumb" /><p>&nbsp;《独孤天下》&nbsp;全55集 已修正</p></a></div>
				
				<div class="swiper-slide swiper-slide-center none-effect"><a href="/show/45448.html" ><img src="https://wx2.sinaimg.cn/mw690/6e250a41ly1fozyb71js5j20j6087dq5.jpg" class="thumb" /><p>&nbsp;《烈火如歌》&nbsp;全52集</p></a></div>
				
			</div>
			<div class="swiper-pagination"></div>
		</section>
<!-- 公告  -->
		<section class="gonggao-info">
			<span><svg class='icon' style='width: .5em;height: .5em;vertical-align: -0.1em;' aria-hidden='true'><use xlink:href='#icon-gonggaoxiaolaba'></use></svg></span>
			<div id="gonggao"><ul id="notice"></ul></div>
		</section>
<!--院线热播-->
		<section class="mod-head clearfix">
			<div class="mod-head-title">
				<span class="mod-head-name"><svg class="icon" aria-hidden="true"style="font-size: 1.6rem;margin:0 -.1rem 0 -.1rem">
           <use xlink:href="#icon-fanjutuijian"></use>
        </svg>院线热播</span>
			</div>
			<a href="/?m=vod-map.html" class="change" tapmode onclick="showDefault('loading')"><span class="iconfont icon-location"></span></a>
		</section>
		<section class="mod-main clearfix">
			<div class="mod-row">
				<ul class="video-list video-mod-list video-home-limit clearfix">
				
					<li class="video-item" tapmode onclick="showDefault('loading')">
						<a class="video-link" href="/show/46416.html" title="幕后玩家 电影">
							<div class="item-pic item-lazy" data-echo="https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2520543845.jpg">
							<img onerror="this.src='/images/nopic.gif'" src="/template/mttbf/images/nopic.png">
							<!-- <div class="video-tips red">热播中</div> -->
							<div class="video-duration">抢先版</div>						
							</div>
							<div class="video-con">
								<h2 class="video-con-tit ellipsis-1">幕后玩家 电影</h2>
							</div>
						</a>
					</li>
					<li class="video-item" tapmode onclick="showDefault('loading')">
						<a class="video-link" href="/show/46408.html" title="后来的我们">
							<div class="item-pic item-lazy" data-echo="http://ww1.sinaimg.cn/bmiddle/699132e6gy1fqrfekqkzkj20tr15o18s.jpg">
							<img onerror="this.src='/images/nopic.gif'" src="/template/mttbf/images/nopic.png">
							<!-- <div class="video-tips red">热播中</div> -->
							<div class="video-duration">HC高清</div>						
							</div>
							<div class="video-con">
								<h2 class="video-con-tit ellipsis-1">后来的我们</h2>
							</div>
						</a>
					</li>
					<li class="video-item" tapmode onclick="showDefault('loading')">
						<a class="video-link" href="/show/46404.html" title="复仇者联盟3：无限战争">
							<div class="item-pic item-lazy" data-echo="http://ww1.sinaimg.cn/bmiddle/5d3dd8b7ly1fqr4f4g5rqj20c80hiq5w.jpg">
							<img onerror="this.src='/images/nopic.gif'" src="/template/mttbf/images/nopic.png">
							<!-- <div class="video-tips red">热播中</div> -->
							<div class="video-duration">抢先中字</div>						
							</div>
							<div class="video-con">
								<h2 class="video-con-tit ellipsis-1">复仇者联盟3：无限战争</h2>
							</div>
						</a>
					</li>
					<li class="video-item" tapmode onclick="showDefault('loading')">
						<a class="video-link" href="/show/46347.html" title="犬之岛">
							<div class="item-pic item-lazy" data-echo="http://wx4.sinaimg.cn/bmiddle/6b5b619dly1fqg3ea9mlij20u017zqv5.jpg">
							<img onerror="this.src='/images/nopic.gif'" src="/template/mttbf/images/nopic.png">
							<!-- <div class="video-tips red">热播中</div> -->
							<div class="video-duration">抢先版</div>						
							</div>
							<div class="video-con">
								<h2 class="video-con-tit ellipsis-1">犬之岛</h2>
							</div>
						</a>
					</li>
					<li class="video-item" tapmode onclick="showDefault('loading')">
						<a class="video-link" href="/show/46344.html" title="21克拉">
							<div class="item-pic item-lazy" data-echo="https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2518945837.jpg">
							<img onerror="this.src='/images/nopic.gif'" src="/template/mttbf/images/nopic.png">
							<!-- <div class="video-tips red">热播中</div> -->
							<div class="video-duration">清晰版</div>						
							</div>
							<div class="video-con">
								<h2 class="video-con-tit ellipsis-1">21克拉</h2>
							</div>
						</a>
					</li>
					<li class="video-item" tapmode onclick="showDefault('loading')">
						<a class="video-link" href="/show/46252.html" title="狂暴巨兽">
							<div class="item-pic item-lazy" data-echo="http://pic.china-gif.com/pic/upload/vod/2018-04/15236295428.jpg">
							<img onerror="this.src='/images/nopic.gif'" src="/template/mttbf/images/nopic.png">
							<!-- <div class="video-tips red">热播中</div> -->
							<div class="video-duration">抢先版</div>						
							</div>
							<div class="video-con">
								<h2 class="video-con-tit ellipsis-1">狂暴巨兽</h2>
							</div>
						</a>
					</li>
				
					<li class="video-item" tapmode onclick="showDefault('loading')">
						<a class="video-link" href="https://c6941.818tu.com/referrals/index/1655064" rel="noreferrer" title="神勇铁男儿">
							<div class="item-pic item-lazy" data-echo="https://ommdq027l.qnssl.com/novels/15224019271564.jpg?imageView2/0/w/300/q/75">
							<img onerror="this.src='/images/nopic.gif'" src="/template/mttbf/images/nopic.png">
							<!-- <div class="video-tips red">热播中</div> -->
							<div class="video-duration">一代兵王</div>						
							</div>
							<div class="video-con">
								<h2 class="video-con-tit ellipsis-1">神勇铁男儿</h2>
							</div>
						</a>
					</li>
					<li class="video-item" tapmode onclick="showDefault('loading')">
						<a class="video-link" href="https://c6941.818tu.com/referrals/index/1655066" rel="noreferrer" title="美女租客别走">
							<div class="item-pic item-lazy" data-echo="https://ommdq027l.qnssl.com/novels/15234114864369.jpg?imageView2/0/w/300/q/75">
							<img onerror="this.src='/images/nopic.gif'" src="/template/mttbf/images/nopic.png">
							<!-- <div class="video-tips red">热播中</div> -->
							<div class="video-duration">气质流氓</div>						
							</div>
							<div class="video-con">
								<h2 class="video-con-tit ellipsis-1">美女租客别走</h2>
							</div>
						</a>
					</li>
					<li class="video-item" tapmode onclick="showDefault('loading')">
						<a class="video-link" href="https://c6941.818tu.com/referrals/index/1655072" rel="noreferrer" title="我要的情深似海">
							<div class="item-pic item-lazy" data-echo="https://ommdq027l.qnssl.com/novels/15233215821968.jpg?imageView2/0/w/300/q/75">
							<img onerror="this.src='/images/nopic.gif'" src="/template/mttbf/images/nopic.png">
							<!-- <div class="video-tips red">热播中</div> -->
							<div class="video-duration">渣男真狠</div>						
							</div>
							<div class="video-con">
								<h2 class="video-con-tit ellipsis-1">我要的情深似海</h2>
							</div>
						</a>
					</li>
				
					<li class="video-item" tapmode onclick="showDefault('loading')">
						<a class="video-link" href="/show/46069.html" title="头号玩家">
							<div class="item-pic item-lazy" data-echo="http://img1.doubanio.com/view/photo/s_ratio_poster/public/p2516578307.jpg">
							<img onerror="this.src='/images/nopic.gif'" src="/template/mttbf/images/nopic.png">
							<!-- <div class="video-tips red">热播中</div> -->
							<div class="video-duration">抢先中字</div>						
							</div>
							<div class="video-con">
								<h2 class="video-con-tit ellipsis-1">头号玩家</h2>
							</div>
						</a>
					</li>
					<li class="video-item" tapmode onclick="showDefault('loading')">
						<a class="video-link" href="/show/45947.html" title="环太平洋：雷霆再起">
							<div class="item-pic item-lazy" data-echo="https://ww3.sinaimg.cn/large/005yF2tCgy1fprjopy1mmj30b40fkq91.jpg">
							<img onerror="this.src='/images/nopic.gif'" src="/template/mttbf/images/nopic.png">
							<!-- <div class="video-tips red">热播中</div> -->
							<div class="video-duration">HD高清韩版</div>						
							</div>
							<div class="video-con">
								<h2 class="video-con-tit ellipsis-1">环太平洋：雷霆再起</h2>
							</div>
						</a>
					</li>
					<li class="video-item" tapmode onclick="showDefault('loading')">
						<a class="video-link" href="/show/45874.html" title="古墓丽影：源起之战">
							<div class="item-pic item-lazy" data-echo="http://img1.doubanio.com/view/photo/s_ratio_poster/public/p2512717509.jpg">
							<img onerror="this.src='/images/nopic.gif'" src="/template/mttbf/images/nopic.png">
							<!-- <div class="video-tips red">热播中</div> -->
							<div class="video-duration">抢先版</div>						
							</div>
							<div class="video-con">
								<h2 class="video-con-tit ellipsis-1">古墓丽影：源起之战</h2>
							</div>
						</a>
					</li>
				</ul>
			</div>
		</section>
<!--广告1  -->
	<section class="ad-info" id="index_ads_1">
		<script type="text/javascript">
		// user ad
		var user_level = checkUser();
		var index_ads_check = checkAds_index();
		if(user_level ==0 && index_ads_check==1){
			document.write("<script src='/template/mttbf/ads/index_ads.js?r="+Math.random()+"'></s"+"cript>");
		}
		</script>	
	</section>	
	<!--热播电影-->
		<section class="mod-head clearfix">
			<div class="mod-head-title">
				<span class="mod-head-name"><svg class="icon" aria-hidden="true">
           <use xlink:href="#icon-dianying"></use>
        </svg>热播电影</div>
			
			<a href="/vod/1.html" class="change" tapmode onclick="showDefault('loading')"><span class="iconfont icon-location"></span>&nbsp查看更多&nbsp<span class="iconfont icon-right"></span></a>
		</section>	
		<section class="mod-main">
		<div class="mod-row">
				<ul class="video-list video-mod-list video-home-limit clearfix">
				
					<li class="video-item" tapmode onclick="showDefault('loading')">
						<a class="video-link" href="/show/44602.html" title="黑豹">
							<div class="item-pic item-lazy" data-echo="https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2512123434.jpg">
							<img onerror="this.src='/images/nopic.gif'" src="/template/mttbf/images/nopic.png">
							<!-- <div class="video-tips red">热播中</div> -->
							<div class="video-duration">BD高清</div>						
							</div>
							<div class="video-con">
								<h2 class="video-con-tit ellipsis-1">黑豹</h2>
							</div>
						</a>
					</li>
					<li class="video-item" tapmode onclick="showDefault('loading')">
						<a class="video-link" href="/show/44564.html" title="红海行动">
							<div class="item-pic item-lazy" data-echo="https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2511434859.jpg">
							<img onerror="this.src='/images/nopic.gif'" src="/template/mttbf/images/nopic.png">
							<!-- <div class="video-tips red">热播中</div> -->
							<div class="video-duration">HD高清</div>						
							</div>
							<div class="video-con">
								<h2 class="video-con-tit ellipsis-1">红海行动</h2>
							</div>
						</a>
					</li>
					<li class="video-item" tapmode onclick="showDefault('loading')">
						<a class="video-link" href="/show/44559.html" title="唐人街探案2">
							<div class="item-pic item-lazy" data-echo="https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2511355624.jpg">
							<img onerror="this.src='/images/nopic.gif'" src="/template/mttbf/images/nopic.png">
							<!-- <div class="video-tips red">热播中</div> -->
							<div class="video-duration">HD高清</div>						
							</div>
							<div class="video-con">
								<h2 class="video-con-tit ellipsis-1">唐人街探案2</h2>
							</div>
						</a>
					</li>
					<li class="video-item" tapmode onclick="showDefault('loading')">
						<a class="video-link" href="/show/45571.html" title="比得兔">
							<div class="item-pic item-lazy" data-echo="http://img1.doubanio.com/view/photo/s_ratio_poster/public/p2511721149.jpg">
							<img onerror="this.src='/images/nopic.gif'" src="/template/mttbf/images/nopic.png">
							<!-- <div class="video-tips red">热播中</div> -->
							<div class="video-duration">BD高清</div>						
							</div>
							<div class="video-con">
								<h2 class="video-con-tit ellipsis-1">比得兔</h2>
							</div>
						</a>
					</li>
					<li class="video-item" tapmode onclick="showDefault('loading')">
						<a class="video-link" href="/show/540.html" title="小萝莉的猴神大叔">
							<div class="item-pic item-lazy" data-echo="http://i4.cfimg.com/556522/39c6976d7c26e918.jpg">
							<img onerror="this.src='/images/nopic.gif'" src="/template/mttbf/images/nopic.png">
							<!-- <div class="video-tips red">热播中</div> -->
							<div class="video-duration">高清</div>						
							</div>
							<div class="video-con">
								<h2 class="video-con-tit ellipsis-1">小萝莉的猴神大叔</h2>
							</div>
						</a>
					</li>
					<li class="video-item" tapmode onclick="showDefault('loading')">
						<a class="video-link" href="/show/44556.html" title="捉妖记2">
							<div class="item-pic item-lazy" data-echo="https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2509643816.jpg">
							<img onerror="this.src='/images/nopic.gif'" src="/template/mttbf/images/nopic.png">
							<!-- <div class="video-tips red">热播中</div> -->
							<div class="video-duration">HD高清</div>						
							</div>
							<div class="video-con">
								<h2 class="video-con-tit ellipsis-1">捉妖记2</h2>
							</div>
						</a>
					</li>
					<li class="video-item" tapmode onclick="showDefault('loading')">
						<a class="video-link" href="/show/45790.html" title="闺蜜2：无二不作">
							<div class="item-pic item-lazy" data-echo="https://wx3.sinaimg.cn/mw690/005yF2tCgy1fpzak80v8cj30b40fkq4t.jpg">
							<img onerror="this.src='/images/nopic.gif'" src="/template/mttbf/images/nopic.png">
							<!-- <div class="video-tips red">热播中</div> -->
							<div class="video-duration">HD高清</div>						
							</div>
							<div class="video-con">
								<h2 class="video-con-tit ellipsis-1">闺蜜2：无二不作</h2>
							</div>
						</a>
					</li>
					<li class="video-item" tapmode onclick="showDefault('loading')">
						<a class="video-link" href="/show/46086.html" title="花滑女王">
							<div class="item-pic item-lazy" data-echo="https://wx3.sinaimg.cn/mw690/005yF2tCgy1fpwfgq2uinj30b40fkjxw.jpg">
							<img onerror="this.src='/images/nopic.gif'" src="/template/mttbf/images/nopic.png">
							<!-- <div class="video-tips red">热播中</div> -->
							<div class="video-duration">HD高清</div>						
							</div>
							<div class="video-con">
								<h2 class="video-con-tit ellipsis-1">花滑女王</h2>
							</div>
						</a>
					</li>
					<li class="video-item" tapmode onclick="showDefault('loading')">
						<a class="video-link" href="/show/44022.html" title="魅影缝匠">
							<div class="item-pic item-lazy" data-echo="https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2506487968.jpg">
							<img onerror="this.src='/images/nopic.gif'" src="/template/mttbf/images/nopic.png">
							<!-- <div class="video-tips red">热播中</div> -->
							<div class="video-duration">正片</div>						
							</div>
							<div class="video-con">
								<h2 class="video-con-tit ellipsis-1">魅影缝匠</h2>
							</div>
						</a>
					</li>
					<li class="video-item" tapmode onclick="showDefault('loading')">
						<a class="video-link" href="/show/43672.html" title="移动迷宫3：死亡解药">
							<div class="item-pic item-lazy" data-echo="http://i4.fuimg.com/556522/fa3add7f90be76d3.jpg">
							<img onerror="this.src='/images/nopic.gif'" src="/template/mttbf/images/nopic.png">
							<!-- <div class="video-tips red">热播中</div> -->
							<div class="video-duration">HD高清韩版</div>						
							</div>
							<div class="video-con">
								<h2 class="video-con-tit ellipsis-1">移动迷宫3：死亡解药</h2>
							</div>
						</a>
					</li>
					<li class="video-item" tapmode onclick="showDefault('loading')">
						<a class="video-link" href="/show/45959.html" title="第三度嫌疑人">
							<div class="item-pic item-lazy" data-echo="https://wx4.sinaimg.cn/mw690/005yF2tCgy1fplv4cshr6j30b40fkgps.jpg">
							<img onerror="this.src='/images/nopic.gif'" src="/template/mttbf/images/nopic.png">
							<!-- <div class="video-tips red">热播中</div> -->
							<div class="video-duration"></div>						
							</div>
							<div class="video-con">
								<h2 class="video-con-tit ellipsis-1">第三度嫌疑人</h2>
							</div>
						</a>
					</li>
					<li class="video-item" tapmode onclick="showDefault('loading')">
						<a class="video-link" href="/show/43471.html" title="谜巢">
							<div class="item-pic item-lazy" data-echo="https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2510144625.jpg">
							<img onerror="this.src='/images/nopic.gif'" src="/template/mttbf/images/nopic.png">
							<!-- <div class="video-tips red">热播中</div> -->
							<div class="video-duration">HD高清</div>						
							</div>
							<div class="video-con">
								<h2 class="video-con-tit ellipsis-1">谜巢</h2>
							</div>
						</a>
					</li>
				</ul>
		</div>
		</section>	
<!--广告2  -->
	<section class="ad-info" id="index_ads_2">
		<script type="text/javascript">
		// user ad
		var user_level = checkUser();
		var index_ads_check = checkAds_index();
		if(user_level ==0 && index_ads_check==1){
			document.write("<script src='/template/mttbf/ads/index_ads.js?r="+Math.random()+"'></s"+"cript>");
		}
		</script>		
	</section>		
	<!--同步剧场-->
		<section class="mod-head clearfix">
			<div class="mod-head-title">
				<span class="mod-head-name"><svg class="icon" aria-hidden="true">
           <use xlink:href="#icon-dianshiju"></use>
        </svg>同步剧场</div>
			
			<a href="/vod/2.html" class="change" tapmode onclick="showDefault('loading')"><span class="iconfont icon-location"></span>&nbsp查看更多&nbsp<span class="iconfont icon-right"></span></a>
		</section>	
		<section class="mod-main">
		<div class="mod-row">
				<ul class="video-list video-mod-list video-home-limit clearfix">
					<li class="video-item" tapmode onclick="showDefault('loading')">
						<a class="video-link" href="/show/46390.html" title="哦!我的皇帝陛下">
							<div class="item-pic item-lazy" data-echo="https://wx2.sinaimg.cn/mw690/005yF2tCgy1fqp6y0ieefj30b40fktgb.jpg">
							<img onerror="this.src='/images/nopic.gif'" src="/template/mttbf/images/nopic.png">
							<!-- <div class="video-tips red">热播中</div> -->
							<div class="video-duration">更新至18集</div>						
							</div>
							<div class="video-con">
								<h2 class="video-con-tit ellipsis-1">哦!我的皇帝陛下</h2>
							</div>
						</a>
					</li>
					<li class="video-item" tapmode onclick="showDefault('loading')">
						<a class="video-link" href="/show/46186.html" title="北京女子图鉴">
							<div class="item-pic item-lazy" data-echo="http://wx3.sinaimg.cn/mw690/0060lm7Tly1fqbl9jf2g8j30ey0kpmym.jpg">
							<img onerror="this.src='/images/nopic.gif'" src="/template/mttbf/images/nopic.png">
							<!-- <div class="video-tips red">热播中</div> -->
							<div class="video-duration">更新至19集</div>						
							</div>
							<div class="video-con">
								<h2 class="video-con-tit ellipsis-1">北京女子图鉴</h2>
							</div>
						</a>
					</li>
					<li class="video-item" tapmode onclick="showDefault('loading')">
						<a class="video-link" href="/show/46014.html" title="三国机密之潜龙在渊">
							<div class="item-pic item-lazy" data-echo="https://ww3.sinaimg.cn/large/005yF2tCgy1fprnkb2hyxj30b40fkn07.jpg">
							<img onerror="this.src='/images/nopic.gif'" src="/template/mttbf/images/nopic.png">
							<!-- <div class="video-tips red">热播中</div> -->
							<div class="video-duration">更新至42集</div>						
							</div>
							<div class="video-con">
								<h2 class="video-con-tit ellipsis-1">三国机密之潜龙在渊</h2>
							</div>
						</a>
					</li>
					<li class="video-item" tapmode onclick="showDefault('loading')">
						<a class="video-link" href="/show/46371.html" title="西部世界第二季">
							<div class="item-pic item-lazy" data-echo="https://wx1.sinaimg.cn/mw690/005yF2tCgy1fqmpolfb92j30b40fkwj2.jpg">
							<img onerror="this.src='/images/nopic.gif'" src="/template/mttbf/images/nopic.png">
							<!-- <div class="video-tips red">热播中</div> -->
							<div class="video-duration">更新至02集</div>						
							</div>
							<div class="video-con">
								<h2 class="video-con-tit ellipsis-1">西部世界第二季</h2>
							</div>
						</a>
					</li>
					<li class="video-item" tapmode onclick="showDefault('loading')">
						<a class="video-link" href="/show/46379.html" title="萌妻食神">
							<div class="item-pic item-lazy" data-echo="https://wx3.sinaimg.cn/mw690/005yF2tCgy1fqmumu3abdj30b40fk0ym.jpg">
							<img onerror="this.src='/images/nopic.gif'" src="/template/mttbf/images/nopic.png">
							<!-- <div class="video-tips red">热播中</div> -->
							<div class="video-duration">更新至18集</div>						
							</div>
							<div class="video-con">
								<h2 class="video-con-tit ellipsis-1">萌妻食神</h2>
							</div>
						</a>
					</li>
					<li class="video-item" tapmode onclick="showDefault('loading')">
						<a class="video-link" href="/show/46092.html" title="远大前程">
							<div class="item-pic item-lazy" data-echo="https://gss2.bdstatic.com/-fo3dSag_xI4khGkpoWK1HF6hhy/baike/w%3D268%3Bg%3D0/sign=62d4ed2636292df597c3ab13840a3b5d/b999a9014c086e06ebaf17420e087bf40ad1cbb0.jpg">
							<img onerror="this.src='/images/nopic.gif'" src="/template/mttbf/images/nopic.png">
							<!-- <div class="video-tips red">热播中</div> -->
							<div class="video-duration">全48集</div>						
							</div>
							<div class="video-con">
								<h2 class="video-con-tit ellipsis-1">远大前程</h2>
							</div>
						</a>
					</li>
					<li class="video-item" tapmode onclick="showDefault('loading')">
						<a class="video-link" href="/show/46230.html" title="我才不会被女孩子欺负呢">
							<div class="item-pic item-lazy" data-echo="http://r1.ykimg.com/051600005AC1ECE6859B5C99A60987E2">
							<img onerror="this.src='/images/nopic.gif'" src="/template/mttbf/images/nopic.png">
							<!-- <div class="video-tips red">热播中</div> -->
							<div class="video-duration">更新至19集</div>						
							</div>
							<div class="video-con">
								<h2 class="video-con-tit ellipsis-1">我才不会被女孩子欺负呢</h2>
							</div>
						</a>
					</li>
					<li class="video-item" tapmode onclick="showDefault('loading')">
						<a class="video-link" href="/show/46169.html" title="猎豺狼">
							<div class="item-pic item-lazy" data-echo="https://wx4.sinaimg.cn/mw690/005yF2tCgy1fq4e2st32nj30b40fkwkh.jpg">
							<img onerror="this.src='/images/nopic.gif'" src="/template/mttbf/images/nopic.png">
							<!-- <div class="video-tips red">热播中</div> -->
							<div class="video-duration">全42集</div>						
							</div>
							<div class="video-con">
								<h2 class="video-con-tit ellipsis-1">猎豺狼</h2>
							</div>
						</a>
					</li>
					<li class="video-item" tapmode onclick="showDefault('loading')">
						<a class="video-link" href="/show/44922.html" title="独孤天下">
							<div class="item-pic item-lazy" data-echo="https://wx2.sinaimg.cn/mw690/005yF2tCgy1foocuif9dfj30b40fkqag.jpg">
							<img onerror="this.src='/images/nopic.gif'" src="/template/mttbf/images/nopic.png">
							<!-- <div class="video-tips red">热播中</div> -->
							<div class="video-duration">全55集 已修正</div>						
							</div>
							<div class="video-con">
								<h2 class="video-con-tit ellipsis-1">独孤天下</h2>
							</div>
						</a>
					</li>
					<li class="video-item" tapmode onclick="showDefault('loading')">
						<a class="video-link" href="/show/46002.html" title="好久不见">
							<div class="item-pic item-lazy" data-echo="http://ww4.sinaimg.cn/bmiddle/6d939e43ly1fpozns75cwj20eg0m8mzo.jpg">
							<img onerror="this.src='/images/nopic.gif'" src="/template/mttbf/images/nopic.png">
							<!-- <div class="video-tips red">热播中</div> -->
							<div class="video-duration">全42集</div>						
							</div>
							<div class="video-con">
								<h2 class="video-con-tit ellipsis-1">好久不见</h2>
							</div>
						</a>
					</li>
					<li class="video-item" tapmode onclick="showDefault('loading')">
						<a class="video-link" href="/show/43341.html" title="凤囚凰">
							<div class="item-pic item-lazy" data-echo="https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2509709101.jpg">
							<img onerror="this.src='/images/nopic.gif'" src="/template/mttbf/images/nopic.png">
							<!-- <div class="video-tips red">热播中</div> -->
							<div class="video-duration">全54集</div>						
							</div>
							<div class="video-con">
								<h2 class="video-con-tit ellipsis-1">凤囚凰</h2>
							</div>
						</a>
					</li>
					<li class="video-item" tapmode onclick="showDefault('loading')">
						<a class="video-link" href="/show/45448.html" title="烈火如歌">
							<div class="item-pic item-lazy" data-echo="https://wx4.sinaimg.cn/mw690/005yF2tCgy1foxn4yjob3j30b40fkjx6.jpg">
							<img onerror="this.src='/images/nopic.gif'" src="/template/mttbf/images/nopic.png">
							<!-- <div class="video-tips red">热播中</div> -->
							<div class="video-duration">全52集</div>						
							</div>
							<div class="video-con">
								<h2 class="video-con-tit ellipsis-1">烈火如歌</h2>
							</div>
						</a>
					</li>
				</ul>
		</div>
		</section>
<!--广告3  -->
	<section class="ad-info" id="index_ads_3">
		<script type="text/javascript">
		// user ad
		var user_level = checkUser();
		var index_ads_check = checkAds_index();
		if(user_level ==0 && index_ads_check==1){
			document.write("<script src='/template/mttbf/ads/index_ads.js?r="+Math.random()+"'></s"+"cript>");
		}
		</script>			
	</section>			
	<!--劲爆综艺-->
		<section class="mod-head clearfix">
			<div class="mod-head-title">
				<span class="mod-head-name"><svg class="icon" aria-hidden="true">
           <use xlink:href="#icon-yule"></use>
        </svg>劲爆综艺</div>
			
			<a href="/vod/3.html" class="change" tapmode onclick="showDefault('loading')"><span class="iconfont icon-location"></span>&nbsp查看更多&nbsp<span class="iconfont icon-right"></span></a>
		</section>	
		<section class="mod-main">
		<div class="mod-row">
				<ul class="video-list video-mod-list video-home-limit clearfix">
					<li class="video-item" tapmode onclick="showDefault('loading')">
						<a class="video-link" href="/show/17195.html" title="快乐大本营 2018">
							<div class="item-pic item-lazy" data-echo="http://p0.qhimg.com/t016ac3d4c9b6a0be35.jpg">
							<img onerror="this.src='/images/nopic.gif'" src="/template/mttbf/images/nopic.png">
							<!-- <div class="video-tips red">热播中</div> -->
							<div class="video-duration">2018-04-29期</div>						
							</div>
							<div class="video-con">
								<h2 class="video-con-tit ellipsis-1">快乐大本营 2018</h2>
							</div>
						</a>
					</li>
					<li class="video-item" tapmode onclick="showDefault('loading')">
						<a class="video-link" href="/show/43829.html" title="奇葩大会 第2季">
							<div class="item-pic item-lazy" data-echo="http://ww2.sinaimg.cn/large/0060lm7Tly1fo3ul1lj79j30et0loq58.jpg">
							<img onerror="this.src='/images/nopic.gif'" src="/template/mttbf/images/nopic.png">
							<!-- <div class="video-tips red">热播中</div> -->
							<div class="video-duration">2018-04-28期</div>						
							</div>
							<div class="video-con">
								<h2 class="video-con-tit ellipsis-1">奇葩大会 第2季</h2>
							</div>
						</a>
					</li>
					<li class="video-item" tapmode onclick="showDefault('loading')">
						<a class="video-link" href="/show/46251.html" title="奔跑吧 第2季">
							<div class="item-pic item-lazy" data-echo="http://i.gtimg.cn/qqlive/images/newcolumn/v1/t/t8vde4.jpg">
							<img onerror="this.src='/images/nopic.gif'" src="/template/mttbf/images/nopic.png">
							<!-- <div class="video-tips red">热播中</div> -->
							<div class="video-duration">2018-04-27期</div>						
							</div>
							<div class="video-con">
								<h2 class="video-con-tit ellipsis-1">奔跑吧 第2季</h2>
							</div>
						</a>
					</li>
					<li class="video-item" tapmode onclick="showDefault('loading')">
						<a class="video-link" href="/show/43048.html" title="歌手2018">
							<div class="item-pic item-lazy" data-echo="http://ww1.sinaimg.cn/bmiddle/8b5b680aly1fne8mx3195j20ku1127dc.jpg">
							<img onerror="this.src='/images/nopic.gif'" src="/template/mttbf/images/nopic.png">
							<!-- <div class="video-tips red">热播中</div> -->
							<div class="video-duration">2018-04-20期</div>						
							</div>
							<div class="video-con">
								<h2 class="video-con-tit ellipsis-1">歌手2018</h2>
							</div>
						</a>
					</li>
					<li class="video-item" tapmode onclick="showDefault('loading')">
						<a class="video-link" href="/show/16625.html" title="暴走大事件2018">
							<div class="item-pic item-lazy" data-echo="http://puui.qpic.cn/vcover_vt_pic/0/p6pnv3ke41bg8tf1498786662/220">
							<img onerror="this.src='/images/nopic.gif'" src="/template/mttbf/images/nopic.png">
							<!-- <div class="video-tips red">热播中</div> -->
							<div class="video-duration">2018-04-20期</div>						
							</div>
							<div class="video-con">
								<h2 class="video-con-tit ellipsis-1">暴走大事件2018</h2>
							</div>
						</a>
					</li>
					<li class="video-item" tapmode onclick="showDefault('loading')">
						<a class="video-link" href="/show/43342.html" title="欢乐喜剧人第四季">
							<div class="item-pic item-lazy" data-echo="http://wx4.sinaimg.cn/bmiddle/73a641b8ly1fngd66m7d8j219y1zqqv5.jpg">
							<img onerror="this.src='/images/nopic.gif'" src="/template/mttbf/images/nopic.png">
							<!-- <div class="video-tips red">热播中</div> -->
							<div class="video-duration">2018-04-01期</div>						
							</div>
							<div class="video-con">
								<h2 class="video-con-tit ellipsis-1">欢乐喜剧人第四季</h2>
							</div>
						</a>
					</li>
					<li class="video-item" tapmode onclick="showDefault('loading')">
						<a class="video-link" href="/show/42447.html" title="放学别走">
							<div class="item-pic item-lazy" data-echo="http://wx2.sinaimg.cn/bmiddle/df774544ly1fmzwid65twj20u01hcdz8.jpg">
							<img onerror="this.src='/images/nopic.gif'" src="/template/mttbf/images/nopic.png">
							<!-- <div class="video-tips red">热播中</div> -->
							<div class="video-duration">2018-03-18期</div>						
							</div>
							<div class="video-con">
								<h2 class="video-con-tit ellipsis-1">放学别走</h2>
							</div>
						</a>
					</li>
					<li class="video-item" tapmode onclick="showDefault('loading')">
						<a class="video-link" href="/show/42202.html" title="吐槽大会第2季">
							<div class="item-pic item-lazy" data-echo="http://i.gtimg.cn/qqlive/images/newcolumn/v1/1/100dd4.jpg">
							<img onerror="this.src='/images/nopic.gif'" src="/template/mttbf/images/nopic.png">
							<!-- <div class="video-tips red">热播中</div> -->
							<div class="video-duration">2018-02-11期</div>						
							</div>
							<div class="video-con">
								<h2 class="video-con-tit ellipsis-1">吐槽大会第2季</h2>
							</div>
						</a>
					</li>
					<li class="video-item" tapmode onclick="showDefault('loading')">
						<a class="video-link" href="/show/42279.html" title="王者出击">
							<div class="item-pic item-lazy" data-echo="http://ww1.sinaimg.cn/bmiddle/61e44b02ly1fmhqjxr7h9j21tm2tp1kx.jpg">
							<img onerror="this.src='/images/nopic.gif'" src="/template/mttbf/images/nopic.png">
							<!-- <div class="video-tips red">热播中</div> -->
							<div class="video-duration">2018-02-02期</div>						
							</div>
							<div class="video-con">
								<h2 class="video-con-tit ellipsis-1">王者出击</h2>
							</div>
						</a>
					</li>
					<li class="video-item" tapmode onclick="showDefault('loading')">
						<a class="video-link" href="/show/40663.html" title="演员的诞生">
							<div class="item-pic item-lazy" data-echo="http://i.gtimg.cn/qqlive/images/newcolumn/v1/0/02w0am.jpg">
							<img onerror="this.src='/images/nopic.gif'" src="/template/mttbf/images/nopic.png">
							<!-- <div class="video-tips red">热播中</div> -->
							<div class="video-duration">2018-01-27期</div>						
							</div>
							<div class="video-con">
								<h2 class="video-con-tit ellipsis-1">演员的诞生</h2>
							</div>
						</a>
					</li>
					<li class="video-item" tapmode onclick="showDefault('loading')">
						<a class="video-link" href="/show/38372.html" title="明星大侦探第三季">
							<div class="item-pic item-lazy" data-echo="https://wx4.sinaimg.cn/mw690/006oIYg8gy1fjhqe2ptl2j31kw2t44qq.jpg">
							<img onerror="this.src='/images/nopic.gif'" src="/template/mttbf/images/nopic.png">
							<!-- <div class="video-tips red">热播中</div> -->
							<div class="video-duration">2018-01-26期</div>						
							</div>
							<div class="video-con">
								<h2 class="video-con-tit ellipsis-1">明星大侦探第三季</h2>
							</div>
						</a>
					</li>
					<li class="video-item" tapmode onclick="showDefault('loading')">
						<a class="video-link" href="/show/40657.html" title="喜剧总动员2">
							<div class="item-pic item-lazy" data-echo="http://i.gtimg.cn/qqlive/images/newcolumn/v1/r/r6sgna.jpg">
							<img onerror="this.src='/images/nopic.gif'" src="/template/mttbf/images/nopic.png">
							<!-- <div class="video-tips red">热播中</div> -->
							<div class="video-duration">2018-01-20期</div>						
							</div>
							<div class="video-con">
								<h2 class="video-con-tit ellipsis-1">喜剧总动员2</h2>
							</div>
						</a>
					</li>
				</ul>
		</div>
		</section>
<!--广告4  -->
	<section class="ad-info" id="index_ads_4">
		<script type="text/javascript">
		// user ad
		var user_level = checkUser();
		var index_ads_check = checkAds_index();
		if(user_level ==0 && index_ads_check==1){
			document.write("<script src='/template/mttbf/ads/index_ads.js?r="+Math.random()+"'></s"+"cript>");
		}
		</script>		
	</section>			
	<!--热播动漫-->
		<section class="mod-head clearfix">
			<div class="mod-head-title">
				<span class="mod-head-name"><svg class="icon" aria-hidden="true">
           <use xlink:href="#icon-guochandonghuatuijian"></use>
        </svg>热播动漫</div>
			
			<a href="/vod/4.html" class="change" tapmode onclick="showDefault('loading')"><span class="iconfont icon-location"></span>&nbsp查看更多&nbsp<span class="iconfont icon-right"></span></a>
		</section>	
		<section class="mod-main">
		<div class="mod-row">
				<ul class="video-list video-mod-list video-home-limit clearfix">
					<li class="video-item" tapmode onclick="showDefault('loading')">
						<a class="video-link" href="/show/46131.html" title="东京食尸鬼第三季">
							<div class="item-pic item-lazy" data-echo="https://wx2.sinaimg.cn/mw690/005yF2tCgy1fpzw5z6tp4j30b40fk7ai.jpg">
							<img onerror="this.src='/images/nopic.gif'" src="/template/mttbf/images/nopic.png">
							<!-- <div class="video-tips red">热播中</div> -->
							<div class="video-duration">更新至第5集</div>						
							</div>
							<div class="video-con">
								<h2 class="video-con-tit ellipsis-1">东京食尸鬼第三季</h2>
							</div>
						</a>
					</li>
					<li class="video-item" tapmode onclick="showDefault('loading')">
						<a class="video-link" href="/show/45525.html" title="斗破苍穹第二季">
							<div class="item-pic item-lazy" data-echo="http://i.gtimg.cn/qqlive/img/jpgcache/files/qqvideo/8/8j37ljw0f8hy6ha.jpg">
							<img onerror="this.src='/images/nopic.gif'" src="/template/mttbf/images/nopic.png">
							<!-- <div class="video-tips red">热播中</div> -->
							<div class="video-duration">更新至10集</div>						
							</div>
							<div class="video-con">
								<h2 class="video-con-tit ellipsis-1">斗破苍穹第二季</h2>
							</div>
						</a>
					</li>
					<li class="video-item" tapmode onclick="showDefault('loading')">
						<a class="video-link" href="/show/36700.html" title="海贼王/航海王">
							<div class="item-pic item-lazy" data-echo="http://ww4.sinaimg.cn/bmiddle/46ef5521gy1fk2ndbxd1nj20bo0hati2.jpg">
							<img onerror="this.src='/images/nopic.gif'" src="/template/mttbf/images/nopic.png">
							<!-- <div class="video-tips red">热播中</div> -->
							<div class="video-duration">更新至第834集</div>						
							</div>
							<div class="video-con">
								<h2 class="video-con-tit ellipsis-1">海贼王/航海王</h2>
							</div>
						</a>
					</li>
					<li class="video-item" tapmode onclick="showDefault('loading')">
						<a class="video-link" href="/show/40615.html" title="一人之下第二季">
							<div class="item-pic item-lazy" data-echo="https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2503247980.jpg">
							<img onerror="this.src='/images/nopic.gif'" src="/template/mttbf/images/nopic.png">
							<!-- <div class="video-tips red">热播中</div> -->
							<div class="video-duration">更新至第21集</div>						
							</div>
							<div class="video-con">
								<h2 class="video-con-tit ellipsis-1">一人之下第二季</h2>
							</div>
						</a>
					</li>
					<li class="video-item" tapmode onclick="showDefault('loading')">
						<a class="video-link" href="/show/38977.html" title="火影忍者：博人传之次世代继承者">
							<div class="item-pic item-lazy" data-echo="http://wx4.sinaimg.cn/bmiddle/b2019bbdly1fim1rxcyd0j20bt0go78k.jpg">
							<img onerror="this.src='/images/nopic.gif'" src="/template/mttbf/images/nopic.png">
							<!-- <div class="video-tips red">热播中</div> -->
							<div class="video-duration">更新至55集</div>						
							</div>
							<div class="video-con">
								<h2 class="video-con-tit ellipsis-1">火影忍者：博人传之次世代继承者</h2>
							</div>
						</a>
					</li>
					<li class="video-item" tapmode onclick="showDefault('loading')">
						<a class="video-link" href="/show/43337.html" title="枪神记">
							<div class="item-pic item-lazy" data-echo="http://i.gtimg.cn/qqlive/img/jpgcache/files/qqvideo/k/kjketdv4sqxxuky.jpg">
							<img onerror="this.src='/images/nopic.gif'" src="/template/mttbf/images/nopic.png">
							<!-- <div class="video-tips red">热播中</div> -->
							<div class="video-duration">更新至13集</div>						
							</div>
							<div class="video-con">
								<h2 class="video-con-tit ellipsis-1">枪神记</h2>
							</div>
						</a>
					</li>
				
					<li class="video-item" tapmode onclick="showDefault('loading')">
						<a class="video-link" href="/show/46050.html" title="妾欲偷香">
							<div class="item-pic item-lazy" data-echo="http://s.kymanhua.com/cover/1522042790802259413.jpg">
							<img onerror="this.src='/images/nopic.gif'" src="/template/mttbf/images/nopic.png">
							<!-- <div class="video-tips red">热播中</div> -->
							<div class="video-duration"></div>						
							</div>
							<div class="video-con">
								<h2 class="video-con-tit ellipsis-1">妾欲偷香</h2>
							</div>
						</a>
					</li>
					<li class="video-item" tapmode onclick="showDefault('loading')">
						<a class="video-link" href="/show/46049.html" title="缉凶">
							<div class="item-pic item-lazy" data-echo="http://s.kymanhua.com/cover/1523158267180336033.jpg">
							<img onerror="this.src='/images/nopic.gif'" src="/template/mttbf/images/nopic.png">
							<!-- <div class="video-tips red">热播中</div> -->
							<div class="video-duration"></div>						
							</div>
							<div class="video-con">
								<h2 class="video-con-tit ellipsis-1">缉凶</h2>
							</div>
						</a>
					</li>
					<li class="video-item" tapmode onclick="showDefault('loading')">
						<a class="video-link" href="/show/46048.html" title="霸道总裁圈爱记">
							<div class="item-pic item-lazy" data-echo="http://s.kymanhua.com/cover/1521685281808261589.jpg">
							<img onerror="this.src='/images/nopic.gif'" src="/template/mttbf/images/nopic.png">
							<!-- <div class="video-tips red">热播中</div> -->
							<div class="video-duration"></div>						
							</div>
							<div class="video-con">
								<h2 class="video-con-tit ellipsis-1">霸道总裁圈爱记</h2>
							</div>
						</a>
					</li>
				
					<li class="video-item" tapmode onclick="showDefault('loading')">
						<a class="video-link" href="/show/36294.html" title="刀剑神域：序列之争">
							<div class="item-pic item-lazy" data-echo="http://wx4.sinaimg.cn/bmiddle/abebafbcly1fg01ouwdf9j20bw0goto7.jpg">
							<img onerror="this.src='/images/nopic.gif'" src="/template/mttbf/images/nopic.png">
							<!-- <div class="video-tips red">热播中</div> -->
							<div class="video-duration">高清</div>						
							</div>
							<div class="video-con">
								<h2 class="video-con-tit ellipsis-1">刀剑神域：序列之争</h2>
							</div>
						</a>
					</li>
					<li class="video-item" tapmode onclick="showDefault('loading')">
						<a class="video-link" href="/show/37347.html" title="来自深渊">
							<div class="item-pic item-lazy" data-echo="http://ww2.sinaimg.cn/bmiddle/0069i3I2gy1fj5bu96ffhj30xc18g4qr.jpg">
							<img onerror="this.src='/images/nopic.gif'" src="/template/mttbf/images/nopic.png">
							<!-- <div class="video-tips red">热播中</div> -->
							<div class="video-duration">更新至13集</div>						
							</div>
							<div class="video-con">
								<h2 class="video-con-tit ellipsis-1">来自深渊</h2>
							</div>
						</a>
					</li>
					<li class="video-item" tapmode onclick="showDefault('loading')">
						<a class="video-link" href="/show/37631.html" title="内裤队长">
							<div class="item-pic item-lazy" data-echo="http://i4.fuimg.com/556522/6a098fa4e78239ab.jpg">
							<img onerror="this.src='/images/nopic.gif'" src="/template/mttbf/images/nopic.png">
							<!-- <div class="video-tips red">热播中</div> -->
							<div class="video-duration">正片</div>						
							</div>
							<div class="video-con">
								<h2 class="video-con-tit ellipsis-1">内裤队长</h2>
							</div>
						</a>
					</li>				
				</ul>
		</div>
		</section>
</section>
<div class="alert_windows" id="alert_windows"><span class="iconfont icon-close"></span></div>	
<footer class="footer">
	<div class="footerText">
		<p>本站内容均来自互联网，版权归原创者所有<br />如有侵害请发邮件至 ttbf365@163.com<br />本站主题 DESIGN BY [慕乔]</p>
	</div>
</footer>
<div style="display:none"><script src="/js/tj.js"></script></div>
<script type="text/javascript" src="/template/mttbf/js/common.js" ></script>
<script type="text/javascript" src="/template/mttbf/js/swiper.min.js"></script> 
<script type="text/javascript" src="/template/mttbf/js/main.js" ></script>
<script type="text/javascript">
//bottom_ads 
	var user_level = checkUser();
	var bottom_ads_check = checkAds_bottom();
	if(user_level ==0 && bottom_ads_check==1){
		document.write("<script src='/template/mttbf/ads/bottom_ads.js?r="+Math.random()+"'></s"+"cript>");
	}
// add_nav
	var add_nav = getNav();
	document.getElementById("nav").innerHTML += add_nav;
//user login name
	var userid=getCookie("userid");
	if(userid !==""){
	$("#login").hide();
	var username=getCookie("username");
	$("#login-in").html(username);
	$("#login-in").show();
	} else {
	$("#login").show();
	$("#login-in").hide();	
	}
</script>
<script type="text/javascript">
//活动弹窗
</script>

<script type="text/javascript">
//swiper
if ($('.ibanner').length) {
        var swiper = new Swiper('.swiper-container', {
            autoplay: 3500,
            speed: 1000,
            autoplayDisableOnInteraction: false,
            loop: true,
            centeredSlides: true,
            slidesPerView: 2,
            pagination: '.swiper-pagination',
            paginationClickable: true,
            prevButton: '.swiper-button-prev',
            nextButton: '.swiper-button-next',
            onInit: function(swiper) {
                swiper.slides[2].className = "swiper-slide swiper-slide-active"; 
            },
            breakpoints: {
                668: {
                    slidesPerView: 1,
                }
            }
        });
}
//notice
</script>
</body>
</html>