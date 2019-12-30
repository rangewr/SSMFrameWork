package com.jeenotes.ssm.controller.admin.kefu;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;

import com.jeenotes.common.dto.Result;
import com.jeenotes.ssm.pojo.admin.ImagePath;
import com.jeenotes.ssm.service.ImagePathService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.zhouyafeng.itchat4j.Wechat;
import cn.zhouyafeng.itchat4j.face.IMsgHandlerFace;


/**
 * 导航管理
 * @author niceyoo
 *
 */
@Controller
@RequestMapping(value = "admin/kefu")
public class KefuController {
	
	@Autowired
	private ImagePathService imagePathService;
	
	/**
	 * 查询所有导航视频（正常）
	 * @return
	 */
	@RequestMapping("list")
	public String list(ModelMap map) {
		
//		map.put("pageInfo", pageInfo);
		
		return "admin/kefu/kefu_list";
	}
	
	/**
	 * 禁用Banner
	 * @param banner_id
	 * @return
	 */
	@RequestMapping("add")
	@ResponseBody
	public Result add(ModelMap map, HttpServletRequest request){
		
		 Date date = new Date();
		 String szDateFolder = new SimpleDateFormat("yyyyMMdd-HH-mm-ss").format(date);
//		 String szDateFolder = new SimpleDateFormat("yyyy/MM/dd/").format(date);
		 
		
		try {
			
//			String path = "/yjdata/" + szDateFolder;
			String path = request.getSession().getServletContext().getRealPath("/") +szDateFolder;
			
			ImagePath imagePath = new ImagePath();
			imagePath.setPath(path);
			int result = imagePathService.saveImagePath(imagePath);
			if(result == 1){
				System.out.println("成功");
			}else{
				System.out.println("失败");
			}
			
			File f = new File(path);
			if (!f.exists()) {
		        f.mkdirs();
		    }
			
			//String qrPath = "D://itchat4j//login2"; // 保存登陆二维码图片的路径，这里需要在本地新建目录
//			IMsgHandlerFace msgHandler = new TulingRobot(); // 实现IMsgHandlerFace接口的类
			IMsgHandlerFace msgHandler = new SimpleDemo2(); // 实现IMsgHandlerFace接口的类
			Wechat wechat = new Wechat(msgHandler, path); // 【注入】
			wechat.start(); // 启动服务，会在qrPath下生成一张二维码图片，扫描即可登陆，注意，二维码图片如果超过一定时间未扫描会过期，过期时会自动更新，所以你可能需要重新打开图片

		} catch (Exception e) {
			// handle exception
			Result.error("生成失败");
		}
		
		return Result.success();
	}
	
	
	
	
}	