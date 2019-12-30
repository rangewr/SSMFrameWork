package com.jeenotes.ssm.controller.admin.category;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.jeenotes.common.dto.Result;
import com.jeenotes.ssm.pojo.admin.VideoArea;
import com.jeenotes.ssm.pojo.admin.VideoStyle;
import com.jeenotes.ssm.pojo.admin.VideoTime;
import com.jeenotes.ssm.pojo.admin.VideoType;
import com.jeenotes.ssm.service.CategoryManagerService;


/**
 * 分类管理
 * @author niceyoo
 *
 */
@Controller
@RequestMapping(value = "admin/category")
public class CategoryManagerController {
	
	@Autowired
	private CategoryManagerService categoryManagerService;

	/**
	 * 类型
	 * @param model
	 * @return
	 */
	@RequestMapping("type")
	public String type(Model model) {
		List<VideoType> videoTypeList = categoryManagerService.findAllVideoTypeList();
		model.addAttribute("videoTypeList",videoTypeList);
		if(videoTypeList!=null){
			model.addAttribute("listSize", videoTypeList.size());
		}else{
			model.addAttribute("listSize", 0);
		}
		return "admin/category/type_list";
	}
	
	/**
	 * 地区
	 * @param model
	 * @return
	 */
	@RequestMapping("area")
	public String area(Model model) {
		List<VideoArea> allVideoAreaList = categoryManagerService.findAllVideoAreaList();
		model.addAttribute("videoAreaList", allVideoAreaList);
		if(allVideoAreaList!=null){
			model.addAttribute("listSize", allVideoAreaList.size());
		}else{
			model.addAttribute("listSize", 0);
		}
		return "admin/category/area_list";
	}
	
	/**
	 * 年份
	 * @param model
	 * @return
	 */
	@RequestMapping("time")
	public String time(Model model) {
		List<VideoTime> videoTimeList = categoryManagerService.findAllVideoTimeList();
		model.addAttribute("videoTimeList",videoTimeList);
		if(videoTimeList!=null){
			model.addAttribute("listSize", videoTimeList.size());
		}else{
			model.addAttribute("listSize", 0);
		}
		return "admin/category/time_list";
	}
	
	/**
	 * 风格
	 * @param model
	 * @return
	 */
	@RequestMapping("style")
	public String style(Model model) {
		List<VideoStyle> videoStyleList = categoryManagerService.findAllVideoStyleList();
		model.addAttribute("videoStyleList",videoStyleList );
		if(videoStyleList!=null){
			model.addAttribute("listSize", videoStyleList.size());
		}else{
			model.addAttribute("listSize", 0);
		}
		return "admin/category/style_list";
	}
	
	
	/**
	 * 保存地区添加/更新
	 * @param idArr
	 * @param sortArr
	 * @param nameArr
	 * @return
	 */
	@RequestMapping("saveArea")
	@ResponseBody
	public Result saveArea(
			@RequestParam(value = "idArr") String[] idArr,
			@RequestParam(value = "sortArr") String[] sortArr,
			@RequestParam(value = "nameArr") String[] nameArr) {
		
		categoryManagerService.saveArea(idArr, sortArr, nameArr);
		
		return Result.success();
	}
	
	/**
	 * 删除地区
	 * @param idArr
	 * @return
	 */
	@RequestMapping("deleteArea")
	@ResponseBody
	public Result deleteArea(
			@RequestParam(value = "idArr") String[] idArr){
		
		categoryManagerService.deleteArea(idArr);
		
		return Result.success();
	}
	
	/**
	 * 启用地区
	 * @param area_id
	 * @return
	 */
	@RequestMapping("enableArea")
	@ResponseBody
	public Result enableArea(
			@RequestParam(value = "area_id") String area_id){
		
		categoryManagerService.enableArea(area_id);
		return Result.success();
	}
	
	/**
	 * 禁用地区
	 * @param area_id
	 * @return
	 */
	@RequestMapping("disableArea")
	@ResponseBody
	public Result disableArea(
			@RequestParam(value = "area_id") String area_id){
		
		categoryManagerService.disableArea(area_id);
		return Result.success();
	}
	
}
