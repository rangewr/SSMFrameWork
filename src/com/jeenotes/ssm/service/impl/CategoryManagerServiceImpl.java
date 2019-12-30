package com.jeenotes.ssm.service.impl;

import java.util.List;

import com.jeenotes.common.dto.OperationCode;
import com.jeenotes.common.utils.DateUtils;
import com.jeenotes.common.utils.IdGen;
import com.jeenotes.ssm.dao.admin.VideoAreaDao;
import com.jeenotes.ssm.dao.admin.VideoStyleDao;
import com.jeenotes.ssm.dao.admin.VideoTimeDao;
import com.jeenotes.ssm.dao.admin.VideoTypeDao;
import com.jeenotes.ssm.pojo.admin.VideoArea;
import com.jeenotes.ssm.pojo.admin.VideoStyle;
import com.jeenotes.ssm.pojo.admin.VideoTime;
import com.jeenotes.ssm.pojo.admin.VideoType;
import com.jeenotes.ssm.service.CategoryManagerService;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * 分类管理
 * 
 * @author niceyoo
 *
 */
@Service
public class CategoryManagerServiceImpl implements CategoryManagerService {

	@Autowired
	private VideoAreaDao videoAreaDao;
	@Autowired
	private VideoTypeDao videoTypeDao;
	@Autowired
	private VideoTimeDao videoTimeDao;
	@Autowired
	private VideoStyleDao videoStyleDao;

	@Override
	public VideoArea getVideoArea(String area_id) {
		return new VideoArea();
	}

	@Override
	public VideoType getVideoType(String type_id) {
		return videoTypeDao.get(type_id);
	}

	@Override
	public VideoTime getVideoTime(String time_id) {
		return videoTimeDao.get(time_id);
	}

	@Override
	public VideoStyle getVideoStyle(String style_id) {
		return videoStyleDao.get(style_id);
	}

	@Override
	public List<VideoArea> findAllVideoAreaList() {
		return videoAreaDao.findAllList();
	}

	@Override
	public List<VideoType> findAllVideoTypeList() {
		return videoTypeDao.findAllList();
	}

	@Override
	public List<VideoTime> findAllVideoTimeList() {
		return videoTimeDao.findAllList();
	}

	@Override
	public List<VideoStyle> findAllVideoStyleList() {
		return videoStyleDao.findAllList();
	}
	
	/**
	 * 批量更新/插入地区分类
	 * @param nameArr 
	 * @param sortArr 
	 * @param idArr 
	 * @param enableArr 
	 */
	@Transactional
	public void saveArea(String[] idArr, String[] sortArr, String[] nameArr) {
		// 遍历第一个数组
		for (int i=0; i<idArr.length; i++) {
			// 判断这条数据是需要更新还是插入
			if (StringUtils.isEmpty(idArr[i])) {
				// 插入
				VideoArea videoArea = new VideoArea();
				videoArea.setSort(Integer.parseInt(sortArr[i]));
				videoArea.setName(nameArr[i]);
				videoArea.setCreate_date(DateUtils.getDate());
				videoArea.setUpdate_date(DateUtils.getDate());
				videoArea.setArea_id(IdGen.uuid());
				videoArea.setEnable("0");
				videoAreaDao.insert(videoArea);
			} else {
				// 更新
				VideoArea videoArea = new VideoArea();
				videoArea.setSort(Integer.parseInt(sortArr[i]));
				videoArea.setName(nameArr[i]);
				videoArea.setUpdate_date(DateUtils.getDate());
				videoArea.setArea_id(idArr[i]);
				videoAreaDao.update(videoArea);
			}
		}
	}

	/**
	 * 批量删除地区分类
	 * @param idArr 主键数组
	 * @throws QingException 
	 */
	@Transactional
	public void deleteArea(String[] idArr){
		// 判断该分类id有没有被使用
//		int nCount = iArticleInfoDAO.countByTypeIdArr(idArr, "1");
//		if (nCount>0) {
//			// 被占用了，禁止删除
//			throw new QingException("存在已被使用的分类，无法删除");
//		}
		
		// 先删除该分类下所有回收站的文章
//		iArticleInfoDAO.batchDeleteByTypeIdArr(idArr);
		// 删除该分类
		for (int i = 0; i < idArr.length; i++) {
			videoAreaDao.delete(idArr[i]);
		}
	}

	/* (non-Javadoc)
	 * @see com.jeenotes.ssm.service.CategoryManagerService#enableArea(java.lang.String)
	 */
	@Override
	public void enableArea(String area_id) {
		
		VideoArea videoArea = videoAreaDao.get(area_id);
		videoArea.setEnable(OperationCode.ENABLE_NO);
		videoAreaDao.update(videoArea);
	}

	@Override
	public void disableArea(String area_id) {
		
		VideoArea videoArea = videoAreaDao.get(area_id);
		videoArea.setEnable(OperationCode.ENABLE_YES);
		videoAreaDao.update(videoArea);
	}

}
