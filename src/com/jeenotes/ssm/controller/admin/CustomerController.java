package com.jeenotes.ssm.controller.admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.jeenotes.common.utils.Page;
//import com.jeenotes.ssm.pojo.BaseDict;
//import com.jeenotes.ssm.pojo.Customer;
//import com.jeenotes.ssm.pojo.QueryVo;
//import com.jeenotes.ssm.service.BaseDictService;
//import com.jeenotes.ssm.service.CustomerService;


/**
 * 客户管理
 * @author niceyoo
 *
 */
@Controller
@RequestMapping(value = "customer")
public class CustomerController {

	
	/*@Autowired
	private BaseDictService baseDictService;
	
	@Autowired
	private CustomerService customerService;
	
	*//**
	 * 显示客户列表
	 * 
	 * @return
	 *//*
	@RequestMapping("list")
	public String queryCustomerList(QueryVo vo,Model model) {
		// 客户来源
		List<BaseDict> fromType = this.baseDictService.selectBaseDictListByCode("002");
		// 所属行业
		List<BaseDict> industryType = this.baseDictService.selectBaseDictListByCode("001");
		// 客户级别
		List<BaseDict> levelType = this.baseDictService.selectBaseDictListByCode("006");

		// 把前端页面需要显示的数据放到模型中
		model.addAttribute("fromType", fromType);
		model.addAttribute("industryType", industryType);
		model.addAttribute("levelType", levelType);

		//通过四个条件  查询分页对象
		Page<Customer> page = customerService.selectPageByQueryVo(vo);
		model.addAttribute("page", page);
		model.addAttribute("custName", vo.getCustName());
		model.addAttribute("custSource", vo.getCustSource());
		model.addAttribute("custIndustry", vo.getCustIndustry());
		model.addAttribute("custLevel", vo.getCustLevel());
		
		return "customer";
	}*/
	
}
