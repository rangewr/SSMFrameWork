package com.jeenotes.ssm.controller;

import java.util.Map;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.UnknownAccountException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.jeenotes.common.dto.Result;

/**
 * 客户登录
 * @author niceyoo
 *
 */
//@SessionAttributes(value = "username")
@Controller
public class LoginControl {
	
	/**
	 * 登录请求，失败返回error.jsp
	 * 
	 * @param username
	 * @param password
	 * @return
	 */
	@ResponseBody
	@RequestMapping("login")
	public Result dologin(String username, String password, Map<String, Object> map, Model model) {
		
		//if(StringUtils.isBlank(username)||StringUtils.isBlank(password)){
			//this.logout();
		//}
		
		UsernamePasswordToken token = new UsernamePasswordToken(username, password);
		token.setRememberMe(true);
		
		try {
			Subject subject = SecurityUtils.getSubject();  
			//此时会跳转到realm 中的doget方法中
			subject.login(token);
			subject.getSession().setTimeout(1000 * 60 * 60 * 1);
			return Result.success();
        }catch (UnknownAccountException e) {   
        	return Result.error("账户不存在");
        }catch (AuthenticationException e) {  
            //e.printStackTrace();
            //model.addAttribute("message", e.getMessage());
            return Result.error("账户密码不匹配");
        }  
	}
	
	/**
	 * 请求转发弹出 alertLogin.jsp
	 * 
	 * @param username
	 * @param password
	 * @return
	 */
	@RequestMapping("alertLogin")
	public String alertLogin(Model model) {
          return "portal/alert_login";
	}
	
	/**
	 * @return 退出登录
	 */
	@RequestMapping(value= "logout")
	public String logout(){
		
		Subject subject = SecurityUtils.getSubject();  
		subject.logout();
		return "portal/index";
	}

}
