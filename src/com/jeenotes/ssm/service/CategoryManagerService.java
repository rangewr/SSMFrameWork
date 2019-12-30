package com.jeenotes.ssm.service;

import java.util.List;

import com.jeenotes.ssm.pojo.admin.VideoArea;
import com.jeenotes.ssm.pojo.admin.VideoStyle;
import com.jeenotes.ssm.pojo.admin.VideoTime;
import com.jeenotes.ssm.pojo.admin.VideoType;

/**
 * 分类管理 公共service
 * @author niceyoo
 *
 */
public interface CategoryManagerService {
	
	public VideoArea getVideoArea(String area_id);
	public VideoType getVideoType(String type_id);
	public VideoTime getVideoTime(String time_id);
	public VideoStyle getVideoStyle(String style_id);
	
	public List<VideoArea> findAllVideoAreaList();
	public List<VideoType> findAllVideoTypeList();
	public List<VideoTime> findAllVideoTimeList();
	public List<VideoStyle> findAllVideoStyleList();
	
	public void saveArea(String[] idArr, String[] sortArr, String[] nameArr);
	public void deleteArea(String[] idArr);
	
	public void enableArea(String area_id);
	public void disableArea(String area_id);

}
