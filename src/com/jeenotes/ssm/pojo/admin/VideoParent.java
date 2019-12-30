package com.jeenotes.ssm.pojo.admin;

/**
 * @author niceyoo 父级视频实体
 *
 */
public class VideoParent extends BaseBean{

	private static final long serialVersionUID = 1L;
	
	private String video_parent_id;//视频上级id
	private String video_parent_name;//视频父级名称
	private String photo;//视频父级显示的图片
	
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
	
	private String child_count;//下级视频数量
	
	/**
	 * @return the video_parent_id
	 */
	public String getVideo_parent_id() {
		return video_parent_id;
	}
	
	/**
	 * @param video_parent_id the video_parent_id to set
	 */
	public void setVideo_parent_id(String video_parent_id) {
		this.video_parent_id = video_parent_id;
	}
	
	/**
	 * @return the video_parent_name
	 */
	public String getVideo_parent_name() {
		return video_parent_name;
	}
	
	/**
	 * @param video_parent_name the video_parent_name to set
	 */
	public void setVideo_parent_name(String video_parent_name) {
		this.video_parent_name = video_parent_name;
	}
	
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

	public String getChild_count() {
		return child_count;
	}
	
	public void setChild_count(String child_count) {
		this.child_count = child_count;
	}
}
