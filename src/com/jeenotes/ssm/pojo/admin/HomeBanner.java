package com.jeenotes.ssm.pojo.admin;

/**
 * @author niceyoo 首页轮播
 *
 */
public class HomeBanner extends BaseBean{

	private static final long serialVersionUID = 1L;
	
	private String banner_id;
	private String banner_type;//轮播类型
	private String image_url;//图片链接
	private String target_url;//跳转链接
	private String banner_title;//显示的标题
	private String banner_title_sub;//副标题
	
	
	public String getBanner_type() {
		return banner_type;
	}
	public void setBanner_type(String banner_type) {
		this.banner_type = banner_type;
	}
	public String getBanner_id() {
		return banner_id;
	}
	public void setBanner_id(String banner_id) {
		this.banner_id = banner_id;
	}
	public String getImage_url() {
		return image_url;
	}
	public void setImage_url(String image_url) {
		this.image_url = image_url;
	}
	public String getTarget_url() {
		return target_url;
	}
	public void setTarget_url(String target_url) {
		this.target_url = target_url;
	}
	public String getBanner_title() {
		return banner_title;
	}
	public void setBanner_title(String banner_title) {
		this.banner_title = banner_title;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	public String getBanner_title_sub() {
		return banner_title_sub;
	}
	public void setBanner_title_sub(String banner_title_sub) {
		this.banner_title_sub = banner_title_sub;
	}
	
}
