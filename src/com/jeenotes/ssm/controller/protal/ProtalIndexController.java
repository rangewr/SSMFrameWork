package com.jeenotes.ssm.controller.protal;

import java.util.List;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.jeenotes.ssm.pojo.admin.VideoChildren;
import com.jeenotes.ssm.pojo.admin.VideoMove;
import com.jeenotes.ssm.pojo.admin.VideoParent;
import com.jeenotes.ssm.service.MoveManagerService;
import com.jeenotes.ssm.service.VideoManagerService;


/**
 * 涂涂影院前台首页
 * @author niceyoo
 *
 */
@Controller
@RequestMapping(value = "protal")
public class ProtalIndexController {
	
	@Autowired
	private VideoManagerService videoManagerService;
	
	@Autowired
	private MoveManagerService moveManagerService;

	
	/**
	 * 视频首页
	 * 
	 * @return
	 */
	@RequestMapping("index")
	public String queryCustomerList(Model model) {
		return "portal/index";
	}
	
	/**
	 * 关于我
	 * @param model
	 * @return
	 */
	@RequestMapping("about")
	public String about(Model model) {
		return "portal/about";
	}
	
	/**
	 * 更多视频
	 * @param model
	 * @return
	 */
	@RequestMapping("more")
	public String more(Model model) {
		return "portal/more";
	}
	
	/**
	 * 连续剧点击跳转链接
	 * @param tv_id
	 * @param model
	 * @return
	 */
	@RequestMapping("tvPlay")
	public String tvPlay(
			@RequestParam(required = false,value="tv_id") String tv_id,
			Model model) {
		
		//父级视频
		VideoParent videoParent = videoManagerService.getVideoParent(tv_id);
		//子级视频列表
		List<VideoChildren> videoChildrenList = videoManagerService.selectVideoChildrenListByParentId(tv_id);
		
		model.addAttribute("selectId", "0");
		model.addAttribute("videoChildrenList", videoChildrenList);
		model.addAttribute("videoParent", videoParent);
		
		if(videoChildrenList==null || videoChildrenList.size()==0){
			model.addAttribute("play_url", "http://img.ksbbs.com/asset/Mon_1703/05cacb4e02f9d9e.mp4");
		}else{
			model.addAttribute("play_url", videoChildrenList.get(0).getPlay_url());
		}
		
		return "portal/video_play_tv";
	}
	
	/**
	 * 连续剧内部点击跳转链接
	 * @param tv_id
	 * @param model
	 * @return
	 */
	@RequestMapping("tvItemPlay")
	public String tvItemPlay(
			@RequestParam(required = false,value="tv_id") String tv_id,
			@RequestParam(required = false,value="tv_item_id") String tv_item_id,
			@RequestParam(required = false,value="selectId") String selectId,
			Model model) {
		
		//判断是否是内部点击跳转还是在首页点击跳转
		if(StringUtils.isBlank(selectId)){
			selectId = "0";
		}
		//父级视频
		VideoParent videoParent = videoManagerService.getVideoParent(tv_id);
		//子级视频列表
		List<VideoChildren> videoChildrenList = videoManagerService.selectVideoChildrenListByParentId(tv_id);
		
		model.addAttribute("selectId", selectId);
		model.addAttribute("videoChildrenList", videoChildrenList);
		model.addAttribute("videoParent", videoParent);
		
		VideoChildren videoChildren = videoManagerService.getVideoChildren(tv_item_id);
		model.addAttribute("play_url", videoChildren.getPlay_url());
		
		return "portal/video_play_tv";
	}
	
	
	/**
	 * 电影点击跳转链接
	 * @param model
	 * @return
	 */
	@RequestMapping("movePlay")
	public String movePlay(@RequestParam(required = false,value="move_id") String move_id,Model model) {
		VideoMove videoMove = moveManagerService.getVideoMove(move_id);
		model.addAttribute("videoMove", videoMove);
		return "portal/video_play_move";
	}
	
}
