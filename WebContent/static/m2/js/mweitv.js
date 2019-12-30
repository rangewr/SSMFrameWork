/*
 * UserCookie
 * ====================================================
*/		
//getCookie
function getCookie(cookie_name)
{
    var allcookies = document.cookie;
    var cookie_pos = allcookies.indexOf(cookie_name);
    if (cookie_pos != -1)
    {
        cookie_pos += cookie_name.length + 1; 
        var cookie_end = allcookies.indexOf(";", cookie_pos);
  
        if (cookie_end == -1)
        {
            cookie_end = allcookies.length;
        }
  
        return value = unescape(allcookies.substring(cookie_pos, cookie_end)); 
    } 
    return "";
}	
//checkUser	
function check_cookie(){ 
   var cookieArray=document.cookie.split("; ");
     var cookie=new Object(); 
     for (var i=0;i<cookieArray.length;i++){ 
      var arr=cookieArray[i].split("="); 
      if(arr[0]=='u_end')return unescape(arr[1]); 
   }
   return "";
}
function checkUser(){
		var user_level;	
		var user_end = getCookie("u_end");
		var now_date = Date.parse( new Date());
		now_date =now_date / 1000;
		if ( user_end=="" || user_end < now_date )
			{
			user_level=0;
			}	
		else {
			user_level=1;
			}	
		return user_level; 
}	

//geurl
function getWeixinurl(){  
  return config.weixin;  
}  
function getWapurl(){  
  return config.wap;  
}  
function getPcurl(){  
  return config.web;  
}   


//addnotice
function getNotice(){
  return config.notice;  
} 


//add nav
function getNav(){ 
	var ua = navigator.userAgent.toLowerCase();
	if(ua.match(/MicroMessenger/i)=="micromessenger") {
		add_nav= config.weixin_nav + config.extend_nav;
 	} else {
		add_nav= config.wap_nav + config.extend_nav;
	}
  return add_nav;  
}   

//alert_windows
function alert_on(){ 
  return config.alert_on;  
}   
//alert_time
function alert_time(){ 
  return config.alert_time;  
} 
//alert_content
function alert_content(){ 
  return config.alert_content;  
}

//index_ads_check
function checkAds_index(){ 
  return config.index_ads;  
}   
//detail_ads_check
function checkAds_detailtop(){ 
  return config.detail_ads_1;  
} 
function checkAds_detail(){ 
  return config.detail_ads_2;  
}  
//play_ads_check
function checkAds_playtop(){ 
  return config.play_ads_1;  
} 
function checkAds_play(){ 
  return config.play_ads_2;  
} 
//bottom_ads_check
function checkAds_bottom(){ 
  return config.bottom_ads;  
} 
//guanzhu
var getUrlParameter = function getUrlParameter(sParam) {
	  var sPageURL = decodeURIComponent(window.location.search.substring(1)),
	  sURLVariables = sPageURL.split('&'),
	  sParameterName,
	  i;
		for (i = 0; i < sURLVariables.length; i++) {
			sParameterName = sURLVariables[i].split('=');

			if (sParameterName[0] === sParam) {
				return sParameterName[1] === undefined ? true : sParameterName[1];
			}
		}
	};
 function is_weixn(){
	var ua = navigator.userAgent.toLowerCase();
		if(ua.match(/MicroMessenger/i)=="micromessenger") {
			return true;
		} else {
			return false;
		}
	}
  var from = getUrlParameter('from');
  if(from == "singlemessage" && is_weixn()){
	window.location.href= config.share
  }	
   if(from == "groupmessage" && is_weixn()){
	window.location.href= config.share
  }
  if(from == "timeline" && is_weixn()){
	window.location.href= config.share
  }
 
 /* off share */
/* function onBridgeReady() { 
    WeixinJSBridge.call('hideOptionMenu'); 
} 
 
if (typeof WeixinJSBridge == "undefined") { 
    if (document.addEventListener) { 
        document.addEventListener('WeixinJSBridgeReady', onBridgeReady, false); 
    } else if (document.attachEvent) { 
        document.attachEvent('WeixinJSBridgeReady', onBridgeReady); 
        document.attachEvent('onWeixinJSBridgeReady', onBridgeReady); 
    } 
} else { 
    onBridgeReady(); 
} */

 /* gourl */
var t;
var weixin_url = getWeixinurl();  
var wap_url = getWeixinurl(); 
var pc_url = getPcurl(); 
var ua = navigator.userAgent.toLowerCase();
if(ua.indexOf('phone') == -1 && ua.indexOf('pad') ==-1 && ua.indexOf('android') ==-1)
{
	t=setTimeout("gomyurl()",0.1);
} else {
				var host = window.location.host;
				if(ua.match(/MicroMessenger/i)=='micromessenger'&& host.indexOf(weixin_url)==-1){
				window.location.href = 'http://'+weixin_url+window.location.pathname+window.location.search;
				}
				else if(host.indexOf(wap_url)==-1 && ua.match(/MicroMessenger/i)!='micromessenger'){
				window.location.href = 'http://'+wap_url+window.location.pathname+window.location.search;
				}				
}
function gomyurl()
{
clearTimeout(t);
window.location.href = 'http://'+pc_url;
}