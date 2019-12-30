package com.jeenotes.ssm.pojo.admin;

/**
 * @author niceyoo 视频风格
 *
 */
public class VideoStyle extends BaseBean{

	private static final long serialVersionUID = 1L;
	
	private String style_id;//视频风格id
	private String name;//视频风格名称
	
	public String getStyle_id() {
		return style_id;
	}

	public void setStyle_id(String style_id) {
		this.style_id = style_id;
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
