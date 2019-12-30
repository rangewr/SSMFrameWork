package com.jeenotes.ssm.pojo.admin;

/**
 * @author niceyoo 视频时间 年代
 *
 */
public class VideoTime extends BaseBean{

	private static final long serialVersionUID = 1L;
	
	private String time_id;//视频时间 年代id
	private String name;//视频时间 年代名称
	
	public String getTime_id() {
		return time_id;
	}

	public void setTime_id(String time_id) {
		this.time_id = time_id;
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
