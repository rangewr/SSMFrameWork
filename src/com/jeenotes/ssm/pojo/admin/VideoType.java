package com.jeenotes.ssm.pojo.admin;

/**
 * @author niceyoo 视频分类
 *
 */
public class VideoType extends BaseBean{

	private static final long serialVersionUID = 1L;
	
	private String type_id;//视频分类id
	private String name;//视频分类名称
	
	public String getType_id() {
		return type_id;
	}
	
	public void setType_id(String type_id) {
		this.type_id = type_id;
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
