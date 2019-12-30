package com.jeenotes.ssm.dao.admin;

import java.util.List;

import com.jeenotes.ssm.pojo.admin.VideoMove;

/**
 * 视频列表_父级
 * @author niceyoo
 *
 */
public interface VideoMoveDao extends CrudDao<VideoMove>{
	
	//查询
	public List<VideoMove> selectVideoParentList();
	
	//public List<VideoParent> findAllList();
	
	//public VideoParent get(String video_parent_id);
}
