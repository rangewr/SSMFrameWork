package com.jeenotes.common.dto;

import java.util.List;

import com.jeenotes.ssm.pojo.admin.VideoMove;

public class ResultMobileBean {
	
	// code 状态码： 成功：000000，失败：999999
	private String code;
	//是否有下一个页码
	private Boolean hasNextPage;
	//下一个页码
	private Integer nextPage;
//	private Integer limit;
//	private Integer page;
	
	// 返回的数据（链式）
	private List<VideoMove> videoDatas;
	
	
	public static ResultMobileBean success() {
		ResultMobileBean result = new ResultMobileBean();
		result.setCode("000000");
		return result;
	}
	
	public static Result error() {
		Result result = new Result();
		result.setCode("999999");
		return result;
	}
	
	
	public String getCode() {
		return code;
	}
	public void setCode(String code) {
		this.code = code;
	}

//	public Integer getLimit() {
//		return limit;
//	}
//
//	public void setLimit(Integer limit) {
//		this.limit = limit;
//	}
//
//	public Integer getPage() {
//		return page;
//	}
//
//	public void setPage(Integer page) {
//		this.page = page;
//	}

	public List<VideoMove> getVideoDatas() {
		return videoDatas;
	}

	public void setVideoDatas(List<VideoMove> videoDatas) {
		this.videoDatas = videoDatas;
	}

	public Boolean getHasNextPage() {
		return hasNextPage;
	}

	public void setHasNextPage(Boolean hasNextPage) {
		this.hasNextPage = hasNextPage;
	}

	public Integer getNextPage() {
		return nextPage;
	}

	public void setNextPage(Integer nextPage) {
		this.nextPage = nextPage;
	}

	
}
