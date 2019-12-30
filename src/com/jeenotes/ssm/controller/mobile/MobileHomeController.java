package com.jeenotes.ssm.controller.mobile;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @author niceyoo
 * 
 * 手机端Control
 *
 */
@Controller
@RequestMapping(value = "mobile")
public class MobileHomeController {
	
	/**
	 * 视频首页
	 * 
	 * @return
	 */
	@RequestMapping("index")
	public String queryCustomerList(Model model) {
		return "mobile/index";
	}

}
