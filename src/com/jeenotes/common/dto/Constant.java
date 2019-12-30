package com.jeenotes.common.dto;

import java.util.UUID;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.crypto.hash.Md5Hash;
import com.jeenotes.ssm.pojo.User;

/**
 * @author niceyoo 公共
 *
 */
public class Constant {

	public static User getCurrentUser(){
		return (User)SecurityUtils.getSubject().getPrincipal();
	}
	
	public static String generateSalt(String unencrypted){
		return new Md5Hash(unencrypted).toString();
	}
	
	public static String encryptionPassword(String unencrypted, String salt){
		return new Md5Hash(unencrypted, salt, 5).toString();
	}
	
	/**
	 * <pre>
	 * uuid获取
	 * </pre>
	 * 
	 * @return
	 */
	public static String getUUID(){
		UUID uuid=UUID.randomUUID();
		String str = uuid.toString(); 
		String uuidStr=str.replace("-", "");
		return uuidStr;
	}
	
	/**
	  * 创建指定数量的随机字符串
	  * @param numberFlag 是否是数字
	  * @param length
	  * @return
	  */
	public static String createRandom(boolean numberFlag, int length){
		String retStr = "";
		String strTable = numberFlag ? "1234567890" : "1234567890abcdefghijkmnpqrstuvwxyz";
		int len = strTable.length();
		boolean bDone = true;
		do {
			retStr = "";
			int count = 0;
			for (int i = 0; i < length; i++) {
				double dblR = Math.random() * len;
				int intR = (int) Math.floor(dblR);
				char c = strTable.charAt(intR);
				if (('0' <= c) && (c <= '9')) {
					count++;
				}
				retStr += strTable.charAt(intR);
			}
			if (count >= 2) {
				bDone = false;
			}
		}while (bDone);
			return retStr;
	 }
}
