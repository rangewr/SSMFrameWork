package com.jeenotes.ssm.service.impl;

import java.util.List;

import com.jeenotes.common.dto.OperationCode;
import com.jeenotes.common.utils.DateUtils;
import com.jeenotes.common.utils.IdGen;
import com.jeenotes.ssm.dao.admin.HomeBannerDao;
import com.jeenotes.ssm.pojo.admin.HomeBanner;
import com.jeenotes.ssm.service.HomeManagerService;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * 分类管理
 * 
 * @author niceyoo
 *
 */
@Service
public class HomeManagerServiceImpl implements HomeManagerService {

	@Autowired
	private HomeBannerDao homeBannerDao;

	@Override
	public HomeBanner getHomeBanner(String banner_id) {
		return homeBannerDao.get(banner_id);
	}

	@Override
	public List<HomeBanner> findAllHomeBannerList() {
		return homeBannerDao.findAllList();
	}

	@Override
	public int saveHomeBanner(HomeBanner homeBanner) {

		if(StringUtils.isEmpty(homeBanner.getBanner_id())){
			//  暂时缺少创建人
			homeBanner.setCreate_date(DateUtils.getDate());
			homeBanner.setUpdate_date(DateUtils.getDate());
			homeBanner.setBanner_id(IdGen.uuid());
			return homeBannerDao.insert(homeBanner);
		}else{
			//  暂时缺少更新人
			homeBanner.setUpdate_date(DateUtils.getDate());
			return homeBannerDao.update(homeBanner);
		}
	}

	@Override
	public void disableBanner(String banner_id) {
		
		HomeBanner homeBanner = homeBannerDao.get(banner_id);
		homeBanner.setEnable(OperationCode.ENABLE_YES);
		homeBannerDao.update(homeBanner);
	}

	@Override
	public void enableBanner(String banner_id) {
		
		HomeBanner homeBanner = homeBannerDao.get(banner_id);
		homeBanner.setEnable(OperationCode.ENABLE_NO);
		homeBannerDao.update(homeBanner);
		
	}

	@Override
	public List<HomeBanner> findMobileHomeBannerList() {
		return homeBannerDao.findMobileHomeBannerList();
	}

}
