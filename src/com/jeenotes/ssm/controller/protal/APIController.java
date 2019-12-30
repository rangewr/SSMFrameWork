package com.jeenotes.ssm.controller.protal;

import java.util.Date;
import java.util.List;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.jeenotes.common.cache.RedisCache;
import com.jeenotes.common.dto.Result;
import com.jeenotes.common.dto.ResultMobileBannerBean;
import com.jeenotes.common.dto.ResultMobileBean;
import com.jeenotes.ssm.pojo.admin.HomeBanner;
import com.jeenotes.ssm.pojo.admin.VideoMove;
import com.jeenotes.ssm.pojo.admin.VideoParent;
import com.jeenotes.ssm.pojo.user.ExceptionBean;
import com.jeenotes.ssm.service.ExceptionService;
import com.jeenotes.ssm.service.HomeManagerService;
import com.jeenotes.ssm.service.MoveManagerService;
import com.jeenotes.ssm.service.VideoManagerService;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;


/**
 * 涂涂影院前台首页数据获取的control
 * @author niceyoo
 *
 */
@Controller
@RequestMapping(value = "api")
public class APIController {

	@Autowired
	private VideoManagerService videoManagerService;
	
	@Autowired
	private MoveManagerService moveManagerService;
	
	@Autowired
	private HomeManagerService homeManagerService;
	
	@Autowired
	private ExceptionService exceptionService;
	
	@Autowired
	private RedisCache cache;
	
	/**
	 * 首页幻灯数据
	 * 
	 * @return
	 */
	@ResponseBody
	@RequestMapping("huandeng")
	public ResultMobileBannerBean huandeng(Model model) {
		
		String cache_key = RedisCache.CAHCENAME + "|getPcHomeHuanDengList";
		ResultMobileBannerBean result_cache = cache.getCache(cache_key, ResultMobileBannerBean.class);
		
		if(result_cache != null){
			return result_cache;
		}
		
		ResultMobileBannerBean bannerBean = new ResultMobileBannerBean();
		bannerBean.setCode("000000");
		List<HomeBanner> homeBannerList = homeManagerService.findMobileHomeBannerList();
		bannerBean.setBannerList(homeBannerList);
		cache.putCacheWithExpireTime(cache_key, bannerBean, RedisCache.CAHCETIME);
		
		return bannerBean;
	}
	
	/**
	 * 电视数据
	 * @param time
	 * @param model
	 * @return
	 */
	@ResponseBody
	@RequestMapping("tv")
	public Result tv(@RequestParam(required = false,value="time") String time,Model model) {
		
		String cache_key = RedisCache.CAHCENAME + "|getPcHomeTvList|0|14|"+time;
		List<VideoParent> result_cache = cache.getListCache(cache_key, VideoParent.class);
		if(result_cache != null){
			return Result.success().add("list", result_cache);
		}
		
		VideoParent videoParent = new VideoParent();
		videoParent.setUpload_time(time);
		PageHelper.startPage(0, 14);
		List<VideoParent> videoParentList = videoManagerService.findVideoParentList(videoParent);
		PageInfo<VideoParent> pageInfo = new PageInfo<VideoParent>(videoParentList);
		cache.putListCacheWithExpireTime(cache_key, videoParentList, RedisCache.CAHCETIME);
		
		return Result.success().add("list", pageInfo.getList());
	}
	
	/**
	 * 电影数据
	 * @param model
	 * @return
	 */
	@ResponseBody
	@RequestMapping("move")
	public Result move(Model model) {
		String cache_key = RedisCache.CAHCENAME + "|getPcHomeMoveList|0|14";
		List<VideoMove> result_cache = cache.getListCache(cache_key, VideoMove.class);
		if(result_cache != null){
			return Result.success().add("list", result_cache);
		}
		PageHelper.startPage(0, 14);
		List<VideoMove> moveParentList = moveManagerService.findVideoMoveList(new VideoMove());
		// PageInfo<VideoMove> pageInfo = new PageInfo<VideoMove>(moveParentList);
		cache.putListCacheWithExpireTime(cache_key, moveParentList, RedisCache.CAHCETIME);
		return Result.success().add("list", moveParentList);
	}
	
	/**
	 * 加载更多数据
	 * @param idArr
	 * @return
	 */
	@ResponseBody
	@RequestMapping("more")
	public Result more(
			@RequestParam(value = "filterArr") String[] filterArr,
			@RequestParam(value="pageNum", defaultValue="1") int pageNum) {
		
		String type_id = filterArr[0].split("=")[1];
		String area_id = filterArr[1].split("=")[1];
		String style_id = filterArr[2].split("=")[1];
		String time_id = filterArr[3].split("=")[1];
		
		//电视剧代表
		VideoParent videoParent = new VideoParent();
		//电影代表
		VideoMove videoMove = new VideoMove();
		
			//默认展示电影频道
		if(type_id.equals("0")){
			//1、电影全部
			//1.1、判断地区
			if(!area_id.equals("0")){
				videoMove.setArea_id(area_id);
			}
			
			if(!style_id.equals("0")){
				videoMove.setStyle_id(style_id);
			}

			if(!time_id.equals("0")){
				videoMove.setTime_id(time_id);
			}
			
			PageHelper.startPage(pageNum, 28);
			List<VideoMove> videoMoveList = moveManagerService.findVideoMoveList(videoMove);
			PageInfo<VideoMove> pageInfo = new PageInfo<VideoMove>(videoMoveList);
			
			return Result.success().add("pageInfo", pageInfo).add("type", 1);
			
		}else if(type_id.equals("1")){
			//2、电影
			if(!area_id.equals("0")){
				videoMove.setArea_id(area_id);
			}
			
			if(!style_id.equals("0")){
				videoMove.setStyle_id(style_id);
			}

			if(!time_id.equals("0")){
				videoMove.setTime_id(time_id);
			}
			
			PageHelper.startPage(pageNum, 28);
			List<VideoMove> videoMoveList = moveManagerService.findVideoMoveList(videoMove);
			PageInfo<VideoMove> pageInfo = new PageInfo<VideoMove>(videoMoveList);
			
			return Result.success().add("pageInfo", pageInfo).add("type", 1);
			
		}else if(type_id.equals("2")){
			//3、电视
			videoParent.setType_id(type_id);
			
			if(!area_id.equals("0")){
				videoParent.setArea_id(area_id);
			}
			
			if(!style_id.equals("0")){
				videoParent.setStyle_id(style_id);
			}

			if(!time_id.equals("0")){
				videoParent.setTime_id(time_id);
			}
			
		}else if(type_id.equals("3")){
			//4、综艺
			videoParent.setType_id(type_id);
			
			if(!area_id.equals("0")){
				videoParent.setArea_id(area_id);
			}
			
			if(!style_id.equals("0")){
				videoParent.setStyle_id(style_id);
			}

			if(!time_id.equals("0")){
				videoParent.setTime_id(time_id);
			}
		}else if(type_id.equals("4")){
			//5、动漫
			videoParent.setType_id(type_id);
			
			if(!area_id.equals("0")){
				videoParent.setArea_id(area_id);
			}
			
			if(!style_id.equals("0")){
				videoParent.setStyle_id(style_id);
			}

			if(!time_id.equals("0")){
				videoParent.setTime_id(time_id);
			}
		}
		
		PageHelper.startPage(pageNum, 28);
		List<VideoParent> videoParentList = videoManagerService.findVideoParentList(videoParent);
		PageInfo<VideoParent> pageInfo = new PageInfo<VideoParent>(videoParentList);
		
		return Result.success().add("pageInfo", pageInfo).add("type", 2);
	}
	
	@ResponseBody
	@RequestMapping("more2")
	public Result more(
			@RequestParam(value = "type_id") String type_id,
			@RequestParam(value = "area_id") String area_id,
			@RequestParam(value = "style_id") String style_id,
			@RequestParam(value = "time_id") String time_id,
			@RequestParam(value="pageNum", defaultValue="1") int pageNum) {
		
		//电视剧代表
		VideoParent videoParent = new VideoParent();
		//电影代表
		VideoMove videoMove = new VideoMove();
		
		//默认展示电影频道
		if(type_id.equals("0")){
			//1、电影全部
			//1.1、判断地区
			if(!area_id.equals("0")){
				videoMove.setArea_id(area_id);
			}
			
			if(!style_id.equals("0")){
				videoMove.setStyle_id(style_id);
			}
			
			if(!time_id.equals("0")){
				videoMove.setTime_id(time_id);
			}
			
			PageHelper.startPage(pageNum, 28);
			List<VideoMove> videoMoveList = moveManagerService.findVideoMoveList(videoMove);
			PageInfo<VideoMove> pageInfo = new PageInfo<VideoMove>(videoMoveList);
			
			return Result.success().add("pageInfo", pageInfo).add("type", 1);
			
		}else if(type_id.equals("1")){
			//2、电影
			if(!area_id.equals("0")){
				videoMove.setArea_id(area_id);
			}
			
			if(!style_id.equals("0")){
				videoMove.setStyle_id(style_id);
			}
			
			if(!time_id.equals("0")){
				videoMove.setTime_id(time_id);
			}
			
			PageHelper.startPage(pageNum, 28);
			List<VideoMove> videoMoveList = moveManagerService.findVideoMoveList(videoMove);
			PageInfo<VideoMove> pageInfo = new PageInfo<VideoMove>(videoMoveList);
			
			return Result.success().add("pageInfo", pageInfo).add("type", 1);
			
		}else if(type_id.equals("2")){
			//3、电视
			if(!area_id.equals("0")){
				videoParent.setArea_id(area_id);
			}
			
			if(!style_id.equals("0")){
				videoParent.setStyle_id(style_id);
			}
			
			if(!time_id.equals("0")){
				videoParent.setTime_id(time_id);
			}
			
		}else if(type_id.equals("3")){
			//4、综艺
			videoParent.setType_id(type_id);
			
			if(!area_id.equals("0")){
				videoParent.setArea_id(area_id);
			}
			
			if(!style_id.equals("0")){
				videoParent.setStyle_id(style_id);
			}
			
			if(!time_id.equals("0")){
				videoParent.setTime_id(time_id);
			}
		}else if(type_id.equals("4")){
			//5、动漫
			videoParent.setType_id(type_id);
			
			if(!area_id.equals("0")){
				videoParent.setArea_id(area_id);
			}
			
			if(!style_id.equals("0")){
				videoParent.setStyle_id(style_id);
			}
			
			if(!time_id.equals("0")){
				videoParent.setTime_id(time_id);
			}
		}
		
		PageHelper.startPage(pageNum, 28);
		List<VideoParent> videoParentList = videoManagerService.findVideoParentList(videoParent);
		PageInfo<VideoParent> pageInfo = new PageInfo<VideoParent>(videoParentList);
		
		return Result.success().add("pageInfo", pageInfo).add("type", 2);
	}
	
	
	//------------------------------手机端------------------------------------------
	
	/**
	 * 手机端获取首页视频的接口
	 * @param page 页数
	 * @param number 每一页的数量
	 * @return
	 */
	@RequestMapping("/getHomeMove")
	@ResponseBody
	public ResultMobileBean list(@Param(value="limit")Integer limit,@Param(value="page")Integer page){
		
		String cache_key = RedisCache.CAHCENAME + "|getMobileMoveList|" + limit + "|" + page;
		ResultMobileBean result_cache = cache.getCache(cache_key, ResultMobileBean.class);
		
		if (result_cache != null) {
			
			System.out.println("get cache with key:" + cache_key);
			return result_cache;
		} else {
			// 缓存中没有再去数据库取，并插入缓存（缓存时间为60秒）
			PageHelper.startPage(limit, page);
			List<VideoMove> moveParentList = moveManagerService.findVideoMoveList(new VideoMove());
			PageInfo<VideoMove> pageInfo = new PageInfo<VideoMove>(moveParentList);
			Boolean hasNextPage = pageInfo.isHasNextPage();
			Integer nextPage = pageInfo.getNextPage();
			
			ResultMobileBean videoBean = new ResultMobileBean();
			videoBean.setCode("000000");
			videoBean.setVideoDatas(pageInfo.getList());
			videoBean.setNextPage(nextPage);
			videoBean.setHasNextPage(hasNextPage);
			
			cache.putCacheWithExpireTime(cache_key, videoBean, RedisCache.CAHCETIME);
//			LOG.info("put cache with key:" + cache_key);
			System.out.println("put cache with key:" + cache_key);
			
			return videoBean;
		}
		
	}
	
	/**
	 * 用户提交异常
	 * @param phone_sys_version
	 * @param phone_model
	 * @param exception_msg
	 */
	@ResponseBody
	@RequestMapping("pushException")
	public Integer pushException(
			@RequestParam(value = "phone_sys_version") String phone_sys_version,
			@RequestParam(value = "phone_model") String phone_model,
			@RequestParam(value = "exception_msg") String exception_msg
			) {
		
		ExceptionBean exception = new ExceptionBean();
		exception.setPhone_sys_version(phone_sys_version);
		exception.setPhone_model(phone_model);
		exception.setException_msg(exception_msg);
		exception.setCreate_date(new Date());
		return exceptionService.saveException(exception);
	}
	
	
	
}
