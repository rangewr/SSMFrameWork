package com.jeenotes.ssm.dao.admin;

import java.util.List;

import com.jeenotes.ssm.pojo.admin.VideoChildren;

/**
 * 视频列表_子级
 * @author niceyoo
 *
 */
public interface VideoChildrenDao extends CrudDao<VideoChildren>{
	
	//查询
	public List<VideoChildren> selectVideoChildrenListByParentId(String video_parent_id);
	
	//public List<VideoChildren> findAllList();
	
	//public VideoChildren get(String video_child_id);
}
