package com.jeenotes.ssm.pojo.user;

import java.io.Serializable;
import java.util.Date;

/**
 * 异常信息实体Bean
 * @author 王树伟
 *
 */
public class ExceptionBean implements Serializable {

	private static final long serialVersionUID = 1L;
	
	/**
	 * 手机系统版本
	 */
	private String phone_sys_version;
	
	/**
	 * 手机型号
	 */
	private String phone_model;
	
	/**
	 * 异常信息
	 */
	private String exception_msg;
	
	/**
	 * 创建时间
	 */
	private Date create_date;

	public String getPhone_sys_version() {
		return phone_sys_version;
	}

	public void setPhone_sys_version(String phone_sys_version) {
		this.phone_sys_version = phone_sys_version;
	}

	public String getPhone_model() {
		return phone_model;
	}

	public void setPhone_model(String phone_model) {
		this.phone_model = phone_model;
	}

	public String getException_msg() {
		return exception_msg;
	}

	public void setException_msg(String exception_msg) {
		this.exception_msg = exception_msg;
	}

	public Date getCreate_date() {
		return create_date;
	}

	public void setCreate_date(Date create_date) {
		this.create_date = create_date;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	

}
