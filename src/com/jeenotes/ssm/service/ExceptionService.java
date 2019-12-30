package com.jeenotes.ssm.service;

import java.util.List;

import com.jeenotes.ssm.pojo.user.ExceptionBean;

/**
 * 异常提交 service
 * @author niceyoo
 *
 */
public interface ExceptionService {
	
	/**
	 * 保存异常信息
	 * @param exception
	 * @return
	 */
	public int saveException(ExceptionBean exception);
	
	/**
	 * 所有异常的列表
	 * @return
	 */
	public List<ExceptionBean> findAllExceptionList();
}
