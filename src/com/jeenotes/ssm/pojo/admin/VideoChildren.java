package com.jeenotes.ssm.pojo.admin;

/**
 * @author niceyoo 子级视频实体
 *
 */
public class VideoChildren extends BaseBean{

	private static final long serialVersionUID = 1L;
	
	private String video_child_id;//视频子类id
	private String video_parent_id;//视频父类id
	private String video_child_name;//视频名称
	private Integer play_number;//播放次数
	private String remark;//评论内容
	
	private String play_url;//播放链接
	
	public String getVideo_parent_id() {
		return video_parent_id;
	}
	public void setVideo_parent_id(String video_parent_id) {
		this.video_parent_id = video_parent_id;
	}
	public String getVideo_child_name() {
		return video_child_name;
	}
	public void setVideo_child_name(String video_child_name) {
		this.video_child_name = video_child_name;
	}
	public Integer getPlay_number() {
		return play_number;
	}
	public void setPlay_number(Integer play_number) {
		this.play_number = play_number;
	}
	public String getRemark() {
		return remark;
	}
	public void setRemark(String remark) {
		this.remark = remark;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	public String getVideo_child_id() {
		return video_child_id;
	}
	public void setVideo_child_id(String video_child_id) {
		this.video_child_id = video_child_id;
	}
	public String getPlay_url() {
		return play_url;
	}
	public void setPlay_url(String play_url) {
		this.play_url = play_url;
	}
}
