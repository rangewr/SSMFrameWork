package com.jeenotes.common.listener;

import javax.servlet.ServletContext;

import org.springframework.web.context.WebApplicationContext;

/**
 * 自定义的监听器
 * 
 * @author niceyoo
 *
 */
public class WebContextListener extends org.springframework.web.context.ContextLoaderListener {
	
	@Override
	public WebApplicationContext initWebApplicationContext(ServletContext servletContext) {
		
		StringBuilder sb = new StringBuilder();
		sb.append("\r\n======================================================================\r\n");
		sb.append("\r\n    欢迎使用 "+" jeenotes - Powered By http://jeenotes.com\r\n");
		sb.append("\r\n======================================================================\r\n");
		System.out.println(sb.toString());
		
		return super.initWebApplicationContext(servletContext);
	}
}
