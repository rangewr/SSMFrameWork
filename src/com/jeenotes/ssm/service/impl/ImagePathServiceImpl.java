package com.jeenotes.ssm.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jeenotes.ssm.dao.admin.ImagePathDao;
import com.jeenotes.ssm.pojo.admin.ImagePath;
import com.jeenotes.ssm.service.ImagePathService;

/**
 * 视频管理
 * 
 * @author niceyoo
 *
 */
@Service
public class ImagePathServiceImpl implements ImagePathService {

	@Autowired
	private ImagePathDao imagePathDao;

	
	@Override
	public int saveImagePath(ImagePath imagePath) {
		return imagePathDao.insert(imagePath);
	}
	


}
