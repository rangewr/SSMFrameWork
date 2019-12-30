package com.jeenotes.ssm.controller.admin.video;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import com.google.gson.Gson;
import com.jeenotes.common.dto.Result;
import com.qiniu.common.QiniuException;
import com.qiniu.common.Zone;
import com.qiniu.http.Response;
import com.qiniu.storage.Configuration;
import com.qiniu.storage.UploadManager;
import com.qiniu.storage.model.DefaultPutRet;
import com.qiniu.util.Auth;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;


/**
 * 视频公共管理
 * @author niceyoo
 *
 */
@Controller
@RequestMapping(value = "admin/video_manager")
public class VideoManagerController {
	
	// @Autowired
	// private VideoManagerService videoManagerService;
	
	// @Autowired
	// private CategoryManagerService categoryManagerService;

	
	
	//----------------------图片上传---------------------------
	
	/**
	 * 上传文件到七牛云
	 * @throws IOException 
	 */
	@RequestMapping("upload")
	@ResponseBody
	public Result upload(MultipartFile file) throws IOException {
		
		/**
		 * 构造一个带指定Zone对象的配置类
		 * 华东 : Zone.zone0()
		 * 华北 : Zone.zone1()
		 * 华南 : Zone.zone2()
		 * 北美 : Zone.zoneNa0()
		 */
		Configuration cfg = new Configuration(Zone.zone0());
		// ...其他参数参考类注释
		UploadManager uploadManager = new UploadManager(cfg);
		// ...生成上传凭证，然后准备上传
		String accessKey = "ajKwcOtWpmWvqB9jFkeV5HURv36GgHeN-tMOd3i-";
		String secretKey = "KjoBHYVc9McDuvDahKZX1OqJ6MecB7YlnRjEmILn";
		String bucket = "tutuyingyuan";
		// 默认不指定key的情况下，以文件内容的hash值作为文件名
		String key = null;
		
		String imgUrl = "";
		try {
			// 数据流上传
			InputStream byteInputStream = file.getInputStream();
			Auth auth = Auth.create(accessKey, secretKey);
			String upToken = auth.uploadToken(bucket);
			try {
				Response response = uploadManager.put(byteInputStream, key, upToken, null, null);
				// 解析上传成功的结果
				DefaultPutRet putRet = new Gson().fromJson(response.bodyString(), DefaultPutRet.class);
				System.out.println(putRet.key);
				System.out.println(putRet.hash);
				imgUrl = putRet.hash;
			} catch (QiniuException ex) {
				Response r = ex.response;
				System.err.println(r.toString());
				try {
					System.err.println(r.bodyString());
				} catch (QiniuException ex2) {
					// ignore
				}
			}
		} catch (UnsupportedEncodingException ex) {
			// ignore
		}
		
		return Result.success().add("imgUrl", imgUrl);
	}
	
	/**
	 * 上传文件到磁盘（物理路径）
	 * @throws IOException 
	 */
	@RequestMapping("upload2")
	@ResponseBody
	public Result upload(MultipartFile file, HttpServletRequest request) throws IOException {
		
		// 文件原名称
		String szFileName = file.getOriginalFilename();
		// 重命名后的文件名称
		String szNewFileName = "";
		// 根据日期自动创建3级目录
		String szDateFolder = "";
		
		// 上传文件
		if (file!=null && szFileName!=null && szFileName.length()>0) {
			Date date = new Date();
			szDateFolder = new SimpleDateFormat("yyyy/MM/dd").format(date);
			// 存储文件的物理路径
			String szFilePath = "E:\\upload\\" + szDateFolder;
			// 自动创建文件夹
			File f = new File(szFilePath);
			if (!f.exists()) {
				f.mkdirs();
			}
			
			// 新的文件名称
			szNewFileName = UUID.randomUUID() + szFileName.substring(szFileName.lastIndexOf("."));
			// 新文件
			File newFile = new File(szFilePath+"\\"+szNewFileName);
			
			// 将内存中的数据写入磁盘
			file.transferTo(newFile);
		}
		
		return Result.success().add("imgUrl", szDateFolder+"/"+szNewFileName);
	}
	
}
