package com.jeenotes.ssm.dao.admin;

import java.util.List;

import com.jeenotes.ssm.pojo.admin.VideoParent;

/**
 * 视频列表_父级
 * @author niceyoo
 *
 */
public interface VideoParentDao extends CrudDao<VideoParent>{
	
	//查询
	public List<VideoParent> selectVideoParentList();
	
	//public List<VideoParent> findAllList();
	
	//public VideoParent get(String video_parent_id);
}
