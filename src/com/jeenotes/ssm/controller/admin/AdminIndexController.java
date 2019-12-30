package com.jeenotes.ssm.controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


/**
 * 涂涂影院后台首页跳转地址
 * @author niceyoo
 *
 */
@Controller
@RequestMapping(value = "admin")
public class AdminIndexController {

	/**
	 * 首页展示
	 * 
	 * @return
	 */
	@RequestMapping("index")
	public String admin(Model model) {
		return "admin/index";
	}
	
	
	
}
