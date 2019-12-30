package com.jeenotes.ssm.controller.admin.home;

import java.io.File;
import java.io.IOException;
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
import com.jeenotes.common.cache.RedisCache;
import com.jeenotes.common.dto.Result;
import com.jeenotes.common.dto.ResultMobileBannerBean;
import com.jeenotes.ssm.pojo.admin.HomeBanner;
import com.jeenotes.ssm.pojo.admin.VideoParent;
import com.jeenotes.ssm.service.HomeManagerService;


/**
 * 导航管理
 * @author niceyoo
 *
 */
@Controller
@RequestMapping(value = "admin/home")
public class HomeManagerController {
	
	@Autowired
	private HomeManagerService homeManagerService;
	
	@Autowired
	private RedisCache cache;

	/**
	 * 查询所有导航视频（正常）
	 * @return
	 */
	@RequestMapping("list")
	public String list(ModelMap map,
			@RequestParam(value="pageNum", defaultValue="1") int pageNum,
			@RequestParam(value="pageSize", defaultValue="10") int pageSize) {
		
		// pageHelper分页插件
		// 只需要在查询之前调用，传入当前页码，以及每一页显示多少条
		PageHelper.startPage(pageNum, pageSize);
		List<HomeBanner> homeBannerList = homeManagerService.findAllHomeBannerList();
		PageInfo<HomeBanner> pageInfo = new PageInfo<HomeBanner>(homeBannerList);
		map.put("pageInfo", pageInfo);
		
		return "admin/home_push/home_lunbo_list";
	}
	
	/**
	 * 导航视频编辑
	 * @return
	 */
	@RequestMapping("edit")
	public String edit(ModelMap map,
			@RequestParam(required = false, value = "banner_id") String banner_id) {
		
		// 查询单个视频的信息
		if (!StringUtils.isEmpty(banner_id)) {
			HomeBanner homeBanner = homeManagerService.getHomeBanner(banner_id);
			map.put("homeBanner", homeBanner);
		}else{
			map.put("homeBanner", new HomeBanner());
		}
		
		map.put("banner_id", banner_id);
		return "admin/home_push/home_lunbo_edit";
	}
	
	/**
	 * 视频父级保存
	 * @return
	 */
	@RequestMapping("saveHomeBanner")
	@ResponseBody
	public Result saveHomeBanner(HomeBanner homeBanner) {
		
		homeManagerService.saveHomeBanner(homeBanner);
		
		String cache_key = RedisCache.CAHCENAME + "|getPcHomeHuanDengList";
		ResultMobileBannerBean bannerBean = new ResultMobileBannerBean();
		bannerBean.setCode("000000");
		List<HomeBanner> homeBannerList = homeManagerService.findMobileHomeBannerList();
		bannerBean.setBannerList(homeBannerList);
		cache.putCacheWithExpireTime(cache_key, bannerBean, RedisCache.CAHCETIME);
		
		return Result.success();
	}
	
	/**
	 * 启用Banner
	 * @param banner_id
	 * @return
	 */
	@RequestMapping("enableBanner")
	@ResponseBody
	public Result enableBanner(
			@RequestParam(value = "banner_id") String banner_id){
		
		homeManagerService.enableBanner(banner_id);
		return Result.success();
	}
	
	/**
	 * 禁用Banner
	 * @param banner_id
	 * @return
	 */
	@RequestMapping("disableBanner")
	@ResponseBody
	public Result disableBanner(
			@RequestParam(value = "banner_id") String banner_id){
		
		homeManagerService.disableBanner(banner_id);
		return Result.success();
	}
	
	
	/**
	 * 上传文件到磁盘（物理路径）
	 * @throws IOException 
	 */
	@RequestMapping("upload")
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
