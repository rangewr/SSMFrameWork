package com.jeenotes.ssm.controller.admin.video;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

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
import com.jeenotes.common.dto.Result;
import com.jeenotes.ssm.pojo.admin.VideoArea;
import com.jeenotes.ssm.pojo.admin.VideoChildren;
import com.jeenotes.ssm.pojo.admin.VideoParent;
import com.jeenotes.ssm.pojo.admin.VideoStyle;
import com.jeenotes.ssm.pojo.admin.VideoTime;
import com.jeenotes.ssm.pojo.admin.VideoType;
import com.jeenotes.ssm.service.CategoryManagerService;
import com.jeenotes.ssm.service.VideoManagerService;
import com.qiniu.common.QiniuException;
import com.qiniu.common.Zone;
import com.qiniu.http.Response;
import com.qiniu.storage.Configuration;
import com.qiniu.storage.UploadManager;
import com.qiniu.storage.model.DefaultPutRet;
import com.qiniu.util.Auth;


/**
 * 电视剧管理
 * @author niceyoo
 *
 */
@Controller
@RequestMapping(value = "admin/video_tv")
public class TvManagerController {
	
	@Autowired
	private VideoManagerService videoManagerService;
	
	@Autowired
	private CategoryManagerService categoryManagerService;

	/**
	 * 查询所有视频_父级列表（正常）
	 * @return
	 */
	@RequestMapping("listParent")
	public String listParent(ModelMap map,
			@RequestParam(required = false,value="area_id") String area_id,
			@RequestParam(required = false,value="upload_time") String upload_time,
			@RequestParam(required = false,value="video_parent_name") String video_parent_name,
			@RequestParam(value="pageNum", defaultValue="1") int pageNum,
			@RequestParam(value="pageSize", defaultValue="10") int pageSize) {
		
		VideoParent videoParent = new VideoParent();
		videoParent.setArea_id(area_id);
		videoParent.setUpload_time(upload_time);
		videoParent.setVideo_parent_name(video_parent_name);
		
		// pageHelper分页插件
		// 只需要在查询之前调用，传入当前页码，以及每一页显示多少条
		PageHelper.startPage(pageNum, pageSize);
		List<VideoParent> videoParentList = videoManagerService.findVideoParentList(videoParent);
		PageInfo<VideoParent> pageInfo = new PageInfo<VideoParent>(videoParentList);
		map.put("pageInfo", pageInfo);
		
		map.put("area_id",area_id);
		map.put("upload_time", upload_time);
		map.put("video_parent_name", video_parent_name);
		//map.put("weekDay", WeekDayEnum.values());
		map.put("areaList",categoryManagerService.findAllVideoAreaList());
		
		return "admin/video_manager_tv/tv_parent_list";
	}
	
	/**
	 * 视频编辑_上级
	 * @return
	 */
	@RequestMapping("editParent")
	public String editParent(ModelMap map,
			@RequestParam(required = false, value = "video_parent_id") String video_parent_id) {
		
		List<VideoArea> videoAreaList = categoryManagerService.findAllVideoAreaList();
		List<VideoTime> videoTimeList = categoryManagerService.findAllVideoTimeList();
		List<VideoType> videoTypeList = categoryManagerService.findAllVideoTypeList();
		List<VideoStyle> videoStyleList = categoryManagerService.findAllVideoStyleList();
		
		// 查询单个视频的信息
		if (!StringUtils.isEmpty(video_parent_id)) {
			VideoParent videoParent = videoManagerService.getVideoParent(video_parent_id);
			map.put("videoParent", videoParent);
		}
		
		// 查询所有视频分类、地区、风格、年份
		map.put("typeList", videoTypeList);
		map.put("areaList", videoAreaList);
		map.put("styleList", videoStyleList);
		map.put("timeList", videoTimeList);
		
		map.put("video_parent_id", video_parent_id);
		
		return "admin/video_manager_tv/tv_parent_edit";
	}
	
	/**
	 * 视频父级保存
	 * @return
	 */
	@RequestMapping("saveParent")
	@ResponseBody
	public Result saveParent(VideoParent videoParent) {
		
		videoManagerService.saveParentVideo(videoParent);
		
		return Result.success();
	}
	
	//---------------------子级视频列表----优美的分割线--------------------------
	
	/**
	 * 查询所有视频_父级列表（正常）
	 * @return
	 */
	@RequestMapping("listChild")
	public String listChild(ModelMap map,
			@RequestParam(required = true,value="video_parent_id") String video_parent_id,
			@RequestParam(value="pageNum", defaultValue="1") int pageNum,
			@RequestParam(value="pageSize", defaultValue="10") int pageSize) {
		
		PageHelper.startPage(pageNum, pageSize);
		List<VideoChildren> videoChildrenList = videoManagerService.selectVideoChildrenListByParentId(video_parent_id);
		PageInfo<VideoChildren> pageInfo = new PageInfo<VideoChildren>(videoChildrenList);
		map.put("pageInfo", pageInfo);
		map.put("video_parent_id",video_parent_id);
		return "admin/video_manager_tv/tv_child_list";
	}
	
	/**
	 * 视频编辑_上级
	 * @return
	 */
	@RequestMapping("editChild")
	public String editChild(ModelMap map,
			@RequestParam(required = false, value = "video_parent_id") String video_parent_id,
			@RequestParam(required = false, value = "video_child_id") String video_child_id) {
		
		// 查询单个视频的信息
		if (!StringUtils.isEmpty(video_child_id)) {
			VideoChildren videoChildren = videoManagerService.getVideoChildren(video_child_id);
			map.put("videoChildren", videoChildren);
		}
		
		map.put("video_child_id", video_child_id);
		map.put("video_parent_id", video_parent_id);
		
		return "admin/video_manager_tv/tv_child_edit";
	}
	
	/**
	 * 视频子级保存
	 * @return
	 */
	@RequestMapping("saveChild")
	@ResponseBody
	public Result saveChild(VideoChildren videoChildren) {
		
		videoManagerService.saveChildVideo(videoChildren);
		
		return Result.success();
	}
	
	
	//----------------------图片上传---------------------------
	
	/**
	 * 上传文件到七牛云
	 * @throws IOException 
	 */
	@RequestMapping("upload")
	@ResponseBody
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
	
	/**
	 * 上传文件到磁盘（物理路径）
	 * @throws IOException 
	 */
	@RequestMapping("upload2")
	@ResponseBody
	public Result upload(MultipartFile file, HttpServletRequest request) throws IOException {
		
		// 文件原名称
		String szFileName = file.getOriginalFilename();
		// 重命名后的文件名称
		String szNewFileName = "";
		// 根据日期自动创建3级目录
		String szDateFolder = "";
		
		// 上传文件
		if (file!=null && szFileName!=null && szFileName.length()>0) {
			Date date = new Date();
			szDateFolder = new SimpleDateFormat("yyyy/MM/dd").format(date);
			// 存储文件的物理路径
			String szFilePath = "E:\\upload\\" + szDateFolder;
			// 自动创建文件夹
			File f = new File(szFilePath);
			if (!f.exists()) {
				f.mkdirs();
			}
			
			// 新的文件名称
			szNewFileName = UUID.randomUUID() + szFileName.substring(szFileName.lastIndexOf("."));
			// 新文件
			File newFile = new File(szFilePath+"\\"+szNewFileName);
			
			// 将内存中的数据写入磁盘
			file.transferTo(newFile);
		}
		
		return Result.success().add("imgUrl", szDateFolder+"/"+szNewFileName);
	}
	
}
