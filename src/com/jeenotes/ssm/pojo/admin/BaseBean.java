package com.jeenotes.ssm.pojo.admin;

import java.io.Serializable;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.jeenotes.common.dto.OperationCode;
import com.jeenotes.ssm.pojo.User;

/**
 * @author niceyoo 父级——公共继承的实体
 *
 */
public class BaseBean implements Serializable {

	private static final long serialVersionUID = 1L;
	
	/**
	 * 创建日期
	 */
	protected String create_date;	
	
	/**
	 * 更新日期
	 */
	protected String update_date;	
	
	/**
	 * 创建用户
	 */
	protected User create_user;
	
	/**
	 * 更新用户
	 */
	protected User update_user;
	
	/**
	 * 排序
	 */
	private Integer sort;
	
	/**
	 * 是否停用:0未停用,1已停用
	 */
	protected String enable = OperationCode.ENABLE_NO;

	/**
	 * @return the create_date
	 */
	@JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
	public String getCreate_date() {
		return create_date;
	}

	/**
	 * @param create_date the create_date to set
	 */
	public void setCreate_date(String create_date) {
		this.create_date = create_date;
	}

	/**
	 * @return the update_date
	 */
	@JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
	public String getUpdate_date() {
		return update_date;
	}

	/**
	 * @param update_date the update_date to set
	 */
	public void setUpdate_date(String update_date) {
		this.update_date = update_date;
	}

	/**
	 * @return the create_user
	 */
	public User getCreate_user() {
		return create_user;
	}

	/**
	 * @param create_user the create_user to set
	 */
	public void setCreate_user(User create_user) {
		this.create_user = create_user;
	}

	/**
	 * @return the update_user
	 */
	public User getUpdate_user() {
		return update_user;
	}

	/**
	 * @param update_user the update_user to set
	 */
	public void setUpdate_user(User update_user) {
		this.update_user = update_user;
	}

	/**
	 * @return the enable
	 */
	public String getEnable() {
		return enable;
	}

	/**
	 * @param enable the enable to set
	 */
	public void setEnable(String enable) {
		this.enable = enable;
	}

	/**
	 * @return the serialversionuid
	 */
	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	/**
	 * @return the sort
	 */
	public Integer getSort() {
		return sort;
	}

	/**
	 * @param sort the sort to set
	 */
	public void setSort(Integer sort) {
		this.sort = sort;
	}

}
