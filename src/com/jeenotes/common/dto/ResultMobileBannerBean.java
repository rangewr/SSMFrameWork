package com.jeenotes.common.dto;

import java.util.List;

import com.jeenotes.ssm.pojo.admin.HomeBanner;


public class ResultMobileBannerBean {
	
	// code 状态码： 成功：000000，失败：999999
	private String code;

	// 返回的数据（链式）
	private List<HomeBanner> bannerList;

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public List<HomeBanner> getBannerList() {
		return bannerList;
	}

	public void setBannerList(List<HomeBanner> bannerList) {
		this.bannerList = bannerList;
	}
}
