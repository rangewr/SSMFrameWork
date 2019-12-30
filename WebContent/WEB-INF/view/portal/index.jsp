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
	<script type="text/javascript">

	(function(window) {
	    var rep = { // 替换用的数据，使用了4个零宽字符，数据量减少了一半。
	        '00': '\u200b',
	        '01': '\u200c',
	        '10': '\u200d',
	        '11': '\uFEFF'
	    };
	    function hide(str) {
	        str = str.replace(/[^\x00-\xff]/g, function(a) { // 转码 Latin-1 编码以外的字符。
	            return escape(a).replace('%', '\\');
	        });
	        str = str.replace(/[\s\S]/g, function(a) { // 处理二进制数据并且进行数据替换
	            a = a.charCodeAt().toString(2);
	            a = a.length < 8 ? Array(9 - a.length).join('0') + a : a;
	            return a.replace(/../g, function(a) {
	                return rep[a];
	            });
	        });
	        return str;
	    }
	    var tpl = '("@code".replace(/.{4}/g,function(a){var rep={"\u200b":"00","\u200c":"01","\u200d":"10","\uFEFF":"11"};return String.fromCharCode(parseInt(a.replace(/./g, function(a) {return rep[a]}),2))}))';
	    window.hider = function(code, type) {
	        var str = hide(code); // 生成零宽字符串
	        str = tpl.replace('@code', str); // 生成模版
	        if (type === 'eval') {
	            str = 'eval' + str;
	        } else {
	            str = 'Function' + str + '()';
	        }
	        return str;
	    }
	})(window);
	
	function test(){
		//alert("aaa");
		var code = hider('function aaa(){alert("测试一下。。")}');
		console.log(code);
		alert(code);
		eval(code);
		console.log(eval(code));
	}
	
	</script>
	<!-- 顶部 -->
	<c:import url="header.jsp"></c:import>
	<!-- 顶部结束 -->
	
	<!--内容TODO-->
	<div style="width: 88%; margin: 20px auto;">
		<!-- <button type="button" id="text" onclick="test();">我是测试按钮</button> -->
		<!--幻灯片-->
		<div class="block" style="height: 380px;border-radius: 6px 6px 6px 6px;">
			<div class="main-20">
				<div class="imageFocus">
					<div class="bd">
						<ul id="huandeng">
							<li style="float: left; width: 100%;">
								<a href="javascript:;" target="_blank">
								<img src="http://r1.ykimg.com/051000005AD81CC0ADC0B0254B08EE5A" width="80%" height="100%"></a>
								<p class="focus-bdaa">重神机潘多拉</p>
								<p class="focus-bda">末世重庆翔龙危机</p>
							</li>
							<li style="float: left; width: 100%;">
								<a href="javascript:;" target="_blank">
								<img src="https://img.alicdn.com/tfs/TB1CfqDi9BYBeNjy0FeXXbnmFXa-1190-410.jpg" width="80%" height="100%"></a>
								<p class="focus-bdaa">罪人与龙共舞</p>
								<p class="focus-bda">暗黑系冒险幻想曲</p>
							</li>
							<li style="float: left; width: 100%;">
								<a href="javascript:;" target="_blank">
								<img src="http://r1.ykimg.com/051000005AD1996EADC0B0F9E70854D9" width="80%" height="100%"></a>
								<p class="focus-bdaa">命运石之门0</p>
								<p class="focus-bda">另一条世界线的故事</p>
							</li>
							<li style="float: left; width: 100%;">
								<a href="javascript:;" target="_blank">
								<img src="http://173.javaex.cn/021e483b2ff546e696dabfdd658042f7.jpg" width="80%" height="100%"></a>
								<p class="focus-bdaa">DARLING in the FRANXX</p>
								<p class="focus-bda">机甲合体开创未来</p>
							</li>
							<li style="float: left; width: 100%;">
								<a href="javascript:;" target="_blank">
								<img src="http://173.javaex.cn/20180402094541341.jpg" width="80%" height="100%"></a>
								<p class="focus-bdaa">冷然之天秤</p>
								<p class="focus-bda">命运不定的少女为自由而奋斗</p>
							</li>
							<li style="float: left; width: 100%;">
								<a href="#" target="_blank">
								<img src="https://img.alicdn.com/tfs/TB1d7AKkY9YBuNjy0FgXXcxcXXa-1190-410.jpg" width="80%" height="100%"></a>
								<p class="focus-bdaa">足球小将</p>
								<p class="focus-bda">北斗企鹅共谱热血青春</p>
							</li>
							<li style="float: left; width: 100%;">
								<a href="javascript:;" target="_blank">
								<img src="http://r1.ykimg.com/051000005AD9DD7CAD9AB7026D02C082" width="80%" height="100%"></a>
								<p class="focus-bdaa">妖怪旅馆营业中</p>
								<p class="focus-bda">妖怪旅馆</p>
							</li>
						</ul>
					</div>
					<div class="hd">
						<ul>
							<li><img src="https://img.alicdn.com/tfs/TB1u_3ejXuWBuNjSspnXXX1NVXa-1190-410.jpg"><a href="javascript:;" class="mask"></a></li>
							<li><img src="https://img.alicdn.com/tfs/TB1u_3ejXuWBuNjSspnXXX1NVXa-1190-410.jpg"><a href="javascript:;" class="mask"></a></li>
							<li><img src="https://img.alicdn.com/tfs/TB1u_3ejXuWBuNjSspnXXX1NVXa-1190-410.jpg"><a href="javascript:;" class="mask"></a></li>
							<li><img src="https://img.alicdn.com/tfs/TB1u_3ejXuWBuNjSspnXXX1NVXa-1190-410.jpg"><a href="javascript:;" class="mask"></a></li>
							<li><img src="http://173.javaex.cn/20180402094541341.jpg"><a href="javascript:;" class="mask"></a></li>
							<li><img src="https://img.alicdn.com/tfs/TB1d7AKkY9YBuNjy0FgXXcxcXXa-1190-410.jpg"><a href="javascript:;" class="mask"></a></li>
							<li><img src="http://r1.ykimg.com/051000005AD9DD7CAD9AB7026D02C082"><a href="javascript:;" class="mask"></a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
		
		<!--最新电影-->
		<div class="block" style="width:100%;border-radius: 6px 6px 6px 6px;">
			<div class="tab-title" style="margin-top:10px;margin-left:20px;margin-right:20px;">
				<img class="mod-icon" src="http://upload.javaex.cn/dm.png" />
				<em>最新电影</em>
				<a class="more animated fadeInDown" href="javascript:;" target="_blank" style="padding-left:0;background: none;float:right;margin-right:20px;">更多</a>
			</div>
			<!--正文内容-->
			<div class="main-20" style="margin-bottom: -20px;height:500px;">
				<ul id="juchangban" class="equal-6 poster list-content" style="margin-top:-5px;">
				</ul>
			</div>
		</div>
		
		<!--连载新片-->
		<div class="block" style="border-radius: 6px 6px 6px 6px;">
			<!--正文内容-->
			<div class="main-20">
			
				<!--选项卡切换-->
				<div id="tab1" class="tab" style="height:550px;">
					<!--选项卡标题部分-->
					<div class="tab-title">
						<img class="mod-icon" src="http://upload.javaex.cn/dm.png" />
						<em>连载新剧</em>
						<ul>
							<li>最新更新</li>
							<li>周一更新</li>
							<li>周二更新</li>
							<li>周三更新</li>
							<li>周四更新</li>
							<li>周五更新</li>
							<li>周六更新</li>
							<li>周日更新</li>
							<a class="more" href="javascript:;" target="_blank" style="padding-left:0;background: none;margin-right:20px;">更多</a>
						</ul>
					</div>
					<!--选项卡内容部分--><!-- list-content -->
					<div class="tab-content" style="margin-bottom: -20px;margin-left:0px;">
						<div><ul id="tab1_1" class="equal-6 poster list-content" style="margin-top:-10px;"></ul></div>
						<div><ul id="tab1_2" class="equal-6 poster list-content" style="margin-top:-10px;"></ul></div>
						<div><ul id="tab1_3" class="equal-6 poster list-content" style="margin-top:-10px;"></ul></div>
						<div><ul id="tab1_4" class="equal-6 poster list-content" style="margin-top:-10px;"></ul></div>
						<div><ul id="tab1_5" class="equal-6 poster list-content" style="margin-top:-10px;"></ul></div>
						<div><ul id="tab1_6" class="equal-6 poster list-content" style="margin-top:-10px;"></ul></div>
						<div><ul id="tab1_7" class="equal-6 poster list-content" style="margin-top:-10px;"></ul></div>
						<div><ul id="tab1_8" class="equal-6 poster list-content" style="margin-top:-10px;"></ul></div>
					</div>
				</div>
			
			</div>
		</div>
		
		</div>
		<!-- 连载新片结束 -->
		
		<!--友情链接-->
		<div class="block" style="width:88%;border-radius: 6px 6px 6px 6px;">
			<!-- 全部主体内容 -->
				<div id="tab2" class="tab">
					<!-- 选项卡标题部分 -->
					<div class="tab-title">
						<!-- <em style="font-size:16px;margin-left:20px;">友情链接：</em> -->
						<ul>
							<li style="font-size:16px;margin-left:20px;">友情链接:</li>
							<li>友情链接一</li>
							<li>友情链接二</li>
							<li>友情链接三</li>
							<li>友情链接四</li>
							<li style="color:red;">申请友链</li>
						</ul>
					</div>
				</div>
		</div>
		<!-- 友情链接结束 -->
	
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
		<li><a href="${ctxStatic}/ttyy.apk" target="_blank"><img src="${ctxStatic}/images/00606MLggw1f9xhpak8v5j304g01hweb.jpg" /></a></li>
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

</body>
<script>
	$(function() {
		
		// 幻灯片
		huandeng();
		
		// 电视连续剧
		loadData("tab1_1", "${ctx}/api/tv?time=0");
		
		// 最新电影
		getMoveData();
	});
	

	// 幻灯片
	function huandeng() {
		
		$(".imageFocus").slide({
			mainCell : ".bd ul",
			effect : "left",
			autoPlay : true
		});
		
		/* $.ajax({
			url : "${ctx}/api/slide.json?apiId=22",
			type : "POST",
			dataType : "json",
			success : function(rtn) {
				if (rtn.code=="999999") {
					huandeng();
					return;
				}
				var list = rtn.data.list;
				var html = '';
				for (var i=0; i<list.length; i++) {
					html += '<li>';
					html += '<a href="'+list[i].url+'" target="_blank">';
					html += '<img src="'+list[i].image+'" width="100%" height="100%">';
					html += '</a>';
					html += '<p class="focus-bdaa">'+list[i].title+'</p>';
					html += '<p class="focus-bda">'+list[i].summary+'</p>';
					html += '</li>';
				}
				$("#huandeng").append(html);
				
				$(".imageFocus").slide({
					mainCell : ".bd ul",
					effect : "left",
					autoPlay : true
				});
			}
		}); */
	}
	
	// 连载新番
	var flag2 = false;
	var flag3 = false;
	var flag4 = false;
	var flag5 = false;
	var flag6 = false;
	var flag7 = false;
	var flag8 = false;
	javaex.tab({
		id : "tab1",
		mode : "click",
		callback: function (rtn) {
			var index = rtn.index;
			//console.log("index:"+index);
			if (index==2) {
				// 星期一
				if (!flag2) {
					loadData("tab1_2", "${ctx}/api/tv?time=1");
					flag2 = true;
				}
			} else if (index==3) {
				// 星期二
				if (!flag3) {
					loadData("tab1_3", "${ctx}/api/tv?time=2");
					flag3 = true;
				}
			} else if (index==4) {
				// 星期三
				if (!flag4) {
					loadData("tab1_4", "${ctx}/api/tv?time=3");
					flag4 = true;
				}
			} else if (index==5) {
				// 星期四
				if (!flag5) {
					loadData("tab1_5", "${ctx}/api/tv?time=4");
					flag5 = true;
				}
			} else if (index==6) {
				// 星期五
				if (!flag6) {
					loadData("tab1_6", "${ctx}/api/tv?time=5");
					flag6 = true;
				}
			} else if (index==7) {
				// 星期六
				if (!flag7) {
					loadData("tab1_7", "${ctx}/api/tv?time=6");
					flag7 = true;
				}
			} else if (index==8) {
				// 星期天
				if (!flag8) {
					loadData("tab1_8", "${ctx}/api/tv?time=7");
					flag8 = true;
				}
			}
		}
	});
	
	javaex.tab({
		id : "tab2",		// tab的id
		current : 1,	// 默认选中第几个选项卡
		mode : "click",
		callback: function (rtn) {
			var index = rtn.index;
			//console.log(rtn.index);
			if(index == 6){
				javaex.alert({
					content : "部分自主功能开发中...请点击右方联系客服~",
					callback : "shenqing()"
				});
			}else if(index != 1){
				javaex.confirm({
					content : "是否要跳转该链接？",
					callback : "youlian()"
				});
			}
		}
	});
	
	//申请友情链接
	function shenqing() {
		//alert("回调函数");
		// 如果你想阻止弹出层关闭，直接 return false; 即可
		//return false;
	}
	
	//友链点击
	function youlian() {
		//alert("回调函数");
		// 如果你想阻止弹出层关闭，直接 return false; 即可
		//return false;
	}
	
	// 加载数据
	function loadData(id, api) {
		$.ajax({
			url : api,
			type : "POST",
			dataType : "json",
			async : "false",
			success : function(rtn) {
				//console.log("返回码"+rtn.code);
				if (rtn.code!="000000") {
					loadData(id, api);
					return;
				}
				var list = rtn.data.list;
				//console.log("返回大小:"+list.length);
				//console.log("要追加的id:"+id);
				if (list.length>0) {
					var html = '';
					for (var i=0; i<list.length; i++) {
						
						html += '<li style="max-width:160px;">';
						html += '<a href="${ctx}/protal/tvPlay?tv_id='+list[i].video_parent_id+ '"  target="_blank" class="shuxing">';
						html += '<span class="duration">更新至第'+list[i].child_count+'集</span>';
						html += '<img src="'+list[i].photo+'" width="100%" height="100%">';
						html += '</a>';
						html += '<p class="screenshot-title"><a href="${ctx}/protal/tvPlay?tv_id='+list[i].video_parent_id+'" target="_blank">'+list[i].video_parent_name+'</a></p>';
						html += '</li>';
						
					}
					/* html += '<span class="clearfix"></span>'; */
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