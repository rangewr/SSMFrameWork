package com.jeenotes.ssm.controller.admin.video;

import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.util.List;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.google.gson.Gson;
import com.jeenotes.common.cache.RedisCache;
import com.jeenotes.common.dto.Result;
import com.jeenotes.ssm.pojo.admin.VideoArea;
import com.jeenotes.ssm.pojo.admin.VideoMove;
import com.jeenotes.ssm.pojo.admin.VideoParent;
import com.jeenotes.ssm.pojo.admin.VideoStyle;
import com.jeenotes.ssm.pojo.admin.VideoTime;
import com.jeenotes.ssm.pojo.admin.VideoType;
import com.jeenotes.ssm.service.CategoryManagerService;
import com.jeenotes.ssm.service.MoveManagerService;
import com.jeenotes.ssm.service.VideoManagerService;
import com.qiniu.common.QiniuException;
import com.qiniu.common.Zone;
import com.qiniu.http.Response;
import com.qiniu.storage.Configuration;
import com.qiniu.storage.UploadManager;
import com.qiniu.storage.model.DefaultPutRet;
import com.qiniu.util.Auth;


/**
 * 电影管理
 * @author niceyoo
 *
 */
@Controller
@RequestMapping(value = "admin/video_move")
public class MoveManagerController {
	
	@Autowired
	private VideoManagerService videoManagerService;
	
	@Autowired
	private MoveManagerService moveManagerService;
	
	@Autowired
	private CategoryManagerService categoryManagerService;
	
	@Autowired
	private RedisCache cache;

	/**
	 * 查询所有视频_父级列表（正常）
	 * @return
	 */
	@RequestMapping("list")
	public String list(ModelMap map,
			@RequestParam(required = false,value="style_id") String style_id,
			@RequestParam(required = false,value="move_name") String move_name,
			@RequestParam(value="pageNum", defaultValue="1") int pageNum,
			@RequestParam(value="pageSize", defaultValue="10") int pageSize) {
		
		VideoMove videoMove = new VideoMove();
		videoMove.setStyle_id(style_id);
		videoMove.setMove_name(move_name);
		
		// pageHelper分页插件
		// 只需要在查询之前调用，传入当前页码，以及每一页显示多少条
		PageHelper.startPage(pageNum, pageSize);
		List<VideoMove> videoMoveList = moveManagerService.findVideoMoveList(videoMove);
		PageInfo<VideoMove> pageInfo = new PageInfo<VideoMove>(videoMoveList);
		map.put("pageInfo", pageInfo);
		
		map.put("move_name",move_name);
		map.put("style_id",style_id);
		//map.put("weekDay", WeekDayEnum.values());
		map.put("styleList",categoryManagerService.findAllVideoStyleList());
		
		return "admin/video_manager_move/move_list";
	}
	
	/**
	 * 视频编辑_上级
	 * @return
	 */
	@RequestMapping("edit")
	public String edit(ModelMap map,
			@RequestParam(required = false, value = "move_id") String move_id) {
		
		List<VideoArea> videoAreaList = categoryManagerService.findAllVideoAreaList();
		List<VideoTime> videoTimeList = categoryManagerService.findAllVideoTimeList();
		List<VideoType> videoTypeList = categoryManagerService.findAllVideoTypeList();
		List<VideoStyle> videoStyleList = categoryManagerService.findAllVideoStyleList();
		
		// 查询单个视频的信息
		if (!StringUtils.isEmpty(move_id)) {
			VideoMove videoMove = moveManagerService.getVideoMove(move_id);
			map.put("videoMove", videoMove);
		}
		
		// 查询所有视频分类、地区、风格、年份
		map.put("typeList", videoTypeList);
		map.put("areaList", videoAreaList);
		map.put("styleList", videoStyleList);
		map.put("timeList", videoTimeList);
		
		map.put("move_id", move_id);
		
		return "admin/video_manager_move/move_edit";
	}
	
	/**
	 * 视频父级保存
	 * @return
	 */
	@ResponseBody
	@RequestMapping("save")
	public Result save(VideoMove videoMove) {
		
		moveManagerService.saveVideoMove(videoMove);
		
		String cache_key = RedisCache.CAHCENAME + "|getPcHomeMoveList|0|14";
		PageHelper.startPage(0, 14);
		List<VideoMove> moveParentList = moveManagerService.findVideoMoveList(new VideoMove());
		PageInfo<VideoMove> pageInfo = new PageInfo<VideoMove>(moveParentList);
		cache.putListCacheWithExpireTime(cache_key, moveParentList, RedisCache.CAHCETIME);
		
		return Result.success();
	}
	
	/**
	 * 删除地区
	 * @param idArr
	 * @return
	 */
	@RequestMapping("deleteMove")
	@ResponseBody
	public Result deleteArea(
			@RequestParam(value = "id") String id){
		
		moveManagerService.deleteMove(id);
		
		return Result.success();
	}
	
	//----------------------图片上传---------------------------
	
	/**
	 * 上传文件到七牛云
	 * @throws IOException 
	 */
	@ResponseBody
	@RequestMapping("upload")
	public Result upload(MultipartFile file) throws IOException {
		
		/**
		 * 构造一个带指定Zone对象的配置类
		 * 华东 : Zone.zone0()
		 * 华北 : Zone.zone1()
		 * 华南 : Zone.zone2()
		 * 北美 : Zone.zoneNa0()
		 */
		Configuration cfg = new Configuration(Zone.zone0());
		// ...其他参数参考类注释
		UploadManager uploadManager = new UploadManager(cfg);
		// ...生成上传凭证，然后准备上传
		String accessKey = "ajKwcOtWpmWvqB9jFkeV5HURv36GgHeN-tMOd3i-";
		String secretKey = "KjoBHYVc9McDuvDahKZX1OqJ6MecB7YlnRjEmILn";
		String bucket = "tutuyingyuan";
		// 默认不指定key的情况下，以文件内容的hash值作为文件名
		String key = null;
		
		String imgUrl = "";
		try {
			// 数据流上传
			InputStream byteInputStream = file.getInputStream();
			Auth auth = Auth.create(accessKey, secretKey);
			String upToken = auth.uploadToken(bucket);
			try {
				Response response = uploadManager.put(byteInputStream, key, upToken, null, null);
				// 解析上传成功的结果
				DefaultPutRet putRet = new Gson().fromJson(response.bodyString(), DefaultPutRet.class);
				System.out.println(putRet.key);
				System.out.println(putRet.hash);
				imgUrl = putRet.hash;
			} catch (QiniuException ex) {
				Response r = ex.response;
				System.err.println(r.toString());
				try {
					System.err.println(r.bodyString());
				} catch (QiniuException ex2) {
					// ignore
				}
			}
		} catch (UnsupportedEncodingException ex) {
			// ignore
		}
		
		return Result.success().add("imgUrl", imgUrl);
	}
	
	
}
