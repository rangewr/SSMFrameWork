package com.jeenotes.ssm.service;

import java.util.List;

import com.jeenotes.ssm.pojo.admin.VideoChildren;
import com.jeenotes.ssm.pojo.admin.VideoParent;

/**
 * 视频管理 公共service
 * @author niceyoo
 *
 */
public interface VideoManagerService {
	
	//-------------------父级视频相关------------------
	
	/**
	 * 获取父级视频
	 * @param vaideo_parent_id
	 * @return
	 */
	public VideoParent getVideoParent(String video_parent_id);
	
	/**
	 * 获取父级视频列表
	 * @param videoParent
	 * @return
	 */
	public List<VideoParent> findVideoParentList(VideoParent videoParent);
	
	/**
	 * 保存父级视频
	 * @param videoParent
	 * @return
	 */
	int saveParentVideo(VideoParent videoParent);
	
	//-------------------子级视频相关------------------
	
	/**
	 * 通过上级视频id获取下级所有视频列表
	 * @param video_parent_id
	 * @return
	 */
	public List<VideoChildren> selectVideoChildrenListByParentId(String video_parent_id);
	
	/**
	 * 获取子级视频_单个
	 * @param vaideo_child_id
	 * @return
	 */
	public VideoChildren getVideoChildren(String video_child_id);
	
	/**
	 * 保存子级视频
	 * @param videoParent
	 * @return
	 */
	int saveChildVideo(VideoChildren videoChildren);

}
