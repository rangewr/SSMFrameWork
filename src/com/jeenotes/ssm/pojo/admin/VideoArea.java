package com.jeenotes.ssm.pojo.admin;

/**
 * @author niceyoo 视频地区
 *
 */
public class VideoArea extends BaseBean{

	private static final long serialVersionUID = 1L;
	
	private String area_id;//视频地区id
	private String name;//视频地区名称
	
	
	public String getArea_id() {
		return area_id;
	}

	public void setArea_id(String area_id) {
		this.area_id = area_id;
	}

	public String getName() {
		return name;
	}
	
	public void setName(String name) {
		this.name = name;
	}
	
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
}
