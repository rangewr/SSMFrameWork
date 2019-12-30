package com.jeenotes.ssm.controller.admin.user;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.jeenotes.ssm.pojo.admin.VideoMove;
import com.jeenotes.ssm.pojo.user.ExceptionBean;
import com.jeenotes.ssm.service.ExceptionService;


/**
 * 异常处理
 * @author niceyoo
 *
 */
@Controller
@RequestMapping(value = "admin/exception")
public class ExceptionController {
	
	@Autowired
	private ExceptionService exceptionService;
	
	/**
	 * 首页展示
	 * 
	 * @return
	 */
	@RequestMapping("list")
	public String list(ModelMap map,
			@RequestParam(value="pageNum", defaultValue="1") int pageNum,
			@RequestParam(value="pageSize", defaultValue="10") int pageSize) {
		
		PageHelper.startPage(pageNum, pageSize);
		List<ExceptionBean> list = exceptionService.findAllExceptionList();
		PageInfo<ExceptionBean> pageInfo = new PageInfo<ExceptionBean>(list);
		map.put("pageInfo", pageInfo);
		
		return "admin/exception/exception_list";
	}
	
	
	
}
