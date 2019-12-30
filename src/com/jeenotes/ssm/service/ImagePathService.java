package com.jeenotes.ssm.service;

import com.jeenotes.ssm.pojo.admin.ImagePath;

/**
 * 电影管理 service
 * @author niceyoo
 *
 */
public interface ImagePathService {
	
	/**
	 * 保存图片路径
	 * @param imagePath
	 * @return
	 */
	int saveImagePath(ImagePath imagePath);
	

}
