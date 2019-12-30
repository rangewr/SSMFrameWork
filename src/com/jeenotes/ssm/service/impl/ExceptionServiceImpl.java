package com.jeenotes.ssm.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jeenotes.ssm.dao.user.ExceptionDao;
import com.jeenotes.ssm.pojo.user.ExceptionBean;
import com.jeenotes.ssm.service.ExceptionService;

/**
 * 异常处理
 * 
 * @author niceyoo
 *
 */
@Service
public class ExceptionServiceImpl implements ExceptionService {

	@Autowired
	private ExceptionDao exceptionDao;

	@Override
	public int saveException(ExceptionBean exception) {
		return exceptionDao.insert(exception);
	}

	@Override
	public List<ExceptionBean> findAllExceptionList() {
		return exceptionDao.findAllList();
	}


}
