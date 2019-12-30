package com.jeenotes.ssm.shiro.realm;

import com.jeenotes.ssm.dao.UserDao;
import com.jeenotes.ssm.pojo.User;

import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.SimpleAuthenticationInfo;
import org.apache.shiro.authc.UnknownAccountException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;


@Component
public class AuthcRealm extends AuthorizingRealm {

	@Autowired
	UserDao userDao;
	
	@Override
	protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principals) {
		
		SimpleAuthorizationInfo info = new SimpleAuthorizationInfo();  
		return info;
	}

	@Override
	protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken token) throws AuthenticationException {
		
		// 把token转换成User对象
		UsernamePasswordToken userToken = (UsernamePasswordToken) token;  
		
		// token中包含用户输入的用户名和密码  
        // 第一步从token中取出用户名  
		String username = (String)token.getPrincipal();   
			
		// 验证用户是否可以登录  
		User user = userDao.findByUsername(username);  
		if(user == null) throw new UnknownAccountException();//没有找到账号异常; 
		
		// 获取数据库中的密码  
        String password = user.getUser_password();  
		
        /** 
         * 认证的用户,正确的密码 
         */
		if(null != username && null != password){
		    return new  SimpleAuthenticationInfo(user, password, this.getName());
		}else{
		    return null;
		}
		//MD5 加密+加盐+多次加密  
		// SimpleAuthenticationInfo authcInfo = new SimpleAuthenticationInfo(adminUser, password,ByteSource.Util.bytes(salt), this.getName());
	}
}
