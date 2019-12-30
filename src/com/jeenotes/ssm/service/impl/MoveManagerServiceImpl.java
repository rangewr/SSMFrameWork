package com.jeenotes.ssm.service.impl;

import java.util.List;

import com.jeenotes.common.utils.DateUtils;
import com.jeenotes.common.utils.IdGen;
import com.jeenotes.ssm.dao.admin.VideoMoveDao;
import com.jeenotes.ssm.pojo.admin.VideoMove;
import com.jeenotes.ssm.service.MoveManagerService;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * 视频管理
 * 
 * @author niceyoo
 *
 */
@Service
public class MoveManagerServiceImpl implements MoveManagerService {

	@Autowired
	private VideoMoveDao videoMoveDao;
	
	@Override
	public List<VideoMove> findVideoMoveList(VideoMove videoMove) {
		// Auto-generated method stub
		return videoMoveDao.findList(videoMove);
	}

	@Override
	public int saveVideoMove(VideoMove videoMove) {
		
		if(StringUtils.isEmpty(videoMove.getMove_id())){
			
			// 暂时缺少创建人
			videoMove.setCreate_date(DateUtils.getDate());
			videoMove.setUpdate_date(DateUtils.getDate());
			videoMove.setMove_id(IdGen.uuid());
			return videoMoveDao.insert(videoMove);
		}else{
			
			//  暂时缺少更新人
			videoMove.setUpdate_date(DateUtils.getDate());
			return videoMoveDao.update(videoMove);
		}
	}

	@Override
	public VideoMove getVideoMove(String move_id) {
		return videoMoveDao.get(move_id);
	}

	@Override
	public void deleteMove(String move_id) {
		videoMoveDao.delete(move_id);
	}

}
