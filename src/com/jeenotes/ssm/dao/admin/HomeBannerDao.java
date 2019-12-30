package com.jeenotes.ssm.dao.admin;

import java.util.List;

import com.jeenotes.ssm.pojo.admin.HomeBanner;

/**
 * 首页轮播Dao
 * @author niceyoo
 *
 */
public interface HomeBannerDao extends CrudDao<HomeBanner>{
	
	//查询
//	public List<HomeBanner> selectHomeBannerList();
	
	//public List<VideoParent> findAllList();
	
	//public VideoParent get(String video_parent_id);
	
	public List<HomeBanner> findMobileHomeBannerList();
}
