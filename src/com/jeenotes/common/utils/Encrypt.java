package com.jeenotes.common.utils;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

import org.apache.shiro.codec.Base64;

/**
 * Time: 下午2:05
 */
public class Encrypt{
    
    static final long serialVersionUID = -2678167249756643248L;
    /**
     * The default password generation algorithm.
     */
    protected static final String ALGORITHM = "SHA";

    public static void main(String[] args) {
        System.out.println(new Encrypt().makePassWordSecurity("123"));
    }

    public String makePassWordSecurity(String inPwd) {
        String outPwd = null;
        if (inPwd != null) {
            try {
                //The digest algorithm used to one-way hash the user's password.
                //If the password is not hashed with a known algorithm, or is in
                //plain text, this will be null.
                MessageDigest md = MessageDigest.getInstance(ALGORITHM);

                //如果存在形如{SHA}ZHadwe8wr3skvksd43=,加密算法有效;
                //那么说明本身已经加密.
                //如果加密算法无效或者没有相似类型{SHA}ZHadwe8wr3skvksd43=
                //那么说明本身是明码,加密处理.
                int rightCurly = inPwd.indexOf("}");
                if (rightCurly > 0 && inPwd.charAt(0) == '{') {
                    String algorithm = inPwd.substring(1, rightCurly);
                    try {
                        MessageDigest.getInstance(algorithm.toUpperCase());
                        outPwd = inPwd;
                    } catch (NoSuchAlgorithmException e) {
                        outPwd = hash(md, inPwd);
                        e.printStackTrace();
//                        logger.error(e);
                    }
                } else {
                    outPwd = hash(md, inPwd);
                }
            } catch (NoSuchAlgorithmException ex) {
                outPwd = inPwd;
                ex.printStackTrace();
//                logger.error(ex);
            }
        }
        return outPwd;
    }

    /**
     * Hashes the given plain text with the given digest algorithm, and
     * base64-encode the result.
     *
     * @param md        message digest algorithm to hash with
     * @param plaintext text to hash
     * @return base64-encoded hashed text
     */
    private String hash(MessageDigest md, String plaintext) {
        StringBuffer sb = new StringBuffer("{");
        sb.append(ALGORITHM);
        sb.append("}");
        sb.append(Base64.encode(md.digest(plaintext.getBytes())));
        return sb.toString();
    }

}
