package com.jeenotes.ssm.service.impl;

import java.util.List;

import com.jeenotes.common.utils.DateUtils;
import com.jeenotes.common.utils.IdGen;
import com.jeenotes.ssm.dao.admin.VideoChildrenDao;
import com.jeenotes.ssm.dao.admin.VideoParentDao;
import com.jeenotes.ssm.pojo.admin.VideoChildren;
import com.jeenotes.ssm.pojo.admin.VideoParent;
import com.jeenotes.ssm.service.VideoManagerService;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * 视频管理
 * 
 * @author niceyoo
 *
 */
@Service
public class VideoManagerServiceImpl implements VideoManagerService {

	@Autowired
	private VideoParentDao videoParentDao;
	
	@Autowired
	private VideoChildrenDao videoChildrenDao;
	

	@Override
	public List<VideoParent> findVideoParentList(VideoParent videoParent) {
		//  Auto-generated method stub
		return videoParentDao.findList(videoParent);
	}

	@Override
	public int saveParentVideo(VideoParent videoParent) {
		
		if(StringUtils.isEmpty(videoParent.getVideo_parent_id())){
			
			//  暂时缺少创建人
			videoParent.setCreate_date(DateUtils.getDate());
			videoParent.setUpdate_date(DateUtils.getDate());
			videoParent.setVideo_parent_id(IdGen.uuid());
			return videoParentDao.insert(videoParent);
		}else{
			
			//  暂时缺少更新人
			videoParent.setUpdate_date(DateUtils.getDate());
			return videoParentDao.update(videoParent);
		}
	}

	@Override
	public VideoParent getVideoParent(String video_parent_id) {
		return videoParentDao.get(video_parent_id);
	}

	@Override
	public List<VideoChildren> selectVideoChildrenListByParentId(String video_parent_id) {
		return videoChildrenDao.selectVideoChildrenListByParentId(video_parent_id);
	}

	@Override
	public VideoChildren getVideoChildren(String video_child_id) {
		return videoChildrenDao.get(video_child_id);
	}

	@Override
	public int saveChildVideo(VideoChildren videoChildren) {
		
		if(StringUtils.isEmpty(videoChildren.getVideo_child_id())){
			
			videoChildren.setCreate_date(DateUtils.getDate());
			videoChildren.setUpdate_date(DateUtils.getDate());
			videoChildren.setVideo_child_id(IdGen.uuid());
			return videoChildrenDao.insert(videoChildren);
		}else{
			
			//  暂时缺少更新人
			videoChildren.setUpdate_date(DateUtils.getDate());
			return videoChildrenDao.update(videoChildren);
		}
	}


}
