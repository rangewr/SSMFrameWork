package com.jeenotes.ssm.pojo.admin;

/**
 * @author niceyoo 父级视频实体
 *
 */
public class VideoMove extends BaseBean{

	private static final long serialVersionUID = 1L;
	
	private String move_id;//视频id
	private String move_name;//视频名称
	private String photo;//视频显示的图片
	
	private String play_url;//播放url
	
	private String type_id;//分类id:电视剧,电影等
	private String type_name;
	private String area_id;//地区id:美国,国产等
	private String area_name;
	private String style_id;//风格id:科技,搞笑
	private String style_name;
	private String time_id;//时间年代id:2018,2017等
	private String time_name;
	
	private String upload_time;//更新上传时间:1\2\3\4\5\6\7
	private String introduce;//剧情介绍
	
	/**
	
	/**
	 * @return the photo
	 */
	public String getPhoto() {
		return photo;
	}
	
	/**
	 * @param photo the photo to set
	 */
	public void setPhoto(String photo) {
		this.photo = photo;
	}
	
	/**
	 * @return the type_id
	 */
	public String getType_id() {
		return type_id;
	}
	
	
	public String getMove_id() {
		return move_id;
	}

	public void setMove_id(String move_id) {
		this.move_id = move_id;
	}

	public String getMove_name() {
		return move_name;
	}

	public void setMove_name(String move_name) {
		this.move_name = move_name;
	}

	/**
	 * @param type_id the type_id to set
	 */
	public void setType_id(String type_id) {
		this.type_id = type_id;
	}
	
	/**
	 * @return the area_id
	 */
	public String getArea_id() {
		return area_id;
	}
	
	/**
	 * @param area_id the area_id to set
	 */
	public void setArea_id(String area_id) {
		this.area_id = area_id;
	}
	
	/**
	 * @return the style_id
	 */
	public String getStyle_id() {
		return style_id;
	}
	
	/**
	 * @param style_id the style_id to set
	 */
	public void setStyle_id(String style_id) {
		this.style_id = style_id;
	}
	
	/**
	 * @return the time_id
	 */
	public String getTime_id() {
		return time_id;
	}
	
	/**
	 * @param time_id the time_id to set
	 */
	public void setTime_id(String time_id) {
		this.time_id = time_id;
	}
	
	/**
	 * @return the upload_time
	 */
	public String getUpload_time() {
		return upload_time;
	}
	
	/**
	 * @param upload_time the upload_time to set
	 */
	public void setUpload_time(String upload_time) {
		this.upload_time = upload_time;
	}
	
	/**
	 * @return the introduce
	 */
	public String getIntroduce() {
		return introduce;
	}
	
	/**
	 * @param introduce the introduce to set
	 */
	public void setIntroduce(String introduce) {
		this.introduce = introduce;
	}
	
	/**
	 * @return the serialversionuid
	 */
	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	public String getType_name() {
		return type_name;
	}

	public void setType_name(String type_name) {
		this.type_name = type_name;
	}

	public String getArea_name() {
		return area_name;
	}

	public void setArea_name(String area_name) {
		this.area_name = area_name;
	}

	public String getStyle_name() {
		return style_name;
	}

	public void setStyle_name(String style_name) {
		this.style_name = style_name;
	}

	public String getTime_name() {
		return time_name;
	}

	public void setTime_name(String time_name) {
		this.time_name = time_name;
	}

	public String getPlay_url() {
		return play_url;
	}

	public void setPlay_url(String play_url) {
		this.play_url = play_url;
	}
	
}
