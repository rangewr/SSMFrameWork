package com.jeenotes.ssm.service;

import java.util.List;

import com.jeenotes.ssm.pojo.admin.HomeBanner;

/**
 * 首页管理 公共service
 * @author niceyoo
 *
 */
public interface HomeManagerService {
	
	//--------------首页轮播---------------
	/**
	 * 通过id获取指定banner
	 * @param banner_id
	 * @return
	 */
	public HomeBanner getHomeBanner(String banner_id);
	
	/**
	 * 获取所有的Banner
	 * @return
	 */
	public List<HomeBanner> findAllHomeBannerList();

	/**
	 * 保存轮播
	 * @param homeBanner
	 * @return
	 */
	int saveHomeBanner(HomeBanner homeBanner);

	/**
	 * 停用
	 * @param banner_id
	 */
	public void disableBanner(String banner_id);
	
	/**
	 * 启用Banner
	 * @param banner_id
	 */
	public void enableBanner(String banner_id);
	
	/**
	 * 获取手机端轮播
	 * @return
	 */
	public List<HomeBanner> findMobileHomeBannerList();

}
