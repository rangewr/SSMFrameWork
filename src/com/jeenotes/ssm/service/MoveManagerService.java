package com.jeenotes.ssm.service;

import java.util.List;

import com.jeenotes.ssm.pojo.admin.VideoMove;

/**
 * 电影管理 service
 * @author niceyoo
 *
 */
public interface MoveManagerService {
	
	
	/**
	 * 获取电影视频
	 * @param move_id
	 * @return
	 */
	public VideoMove getVideoMove(String move_id);
	
	/**
	 * 获取电影视频列表
	 * @param videoParent
	 * @return
	 */
	public List<VideoMove> findVideoMoveList(VideoMove videoMove);
	
	/**
	 * 保存电影视频
	 * @param videoParent
	 * @return
	 */
	int saveVideoMove(VideoMove videoMove);
	
	/**
	 * 删除视频
	 * @param move_id
	 */
	void deleteMove(String move_id);
	

}
