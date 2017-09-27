package com.test;

import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class MD5 {
	/**
	 * 对字符串md5加密
	 * @param str	要加密的字符串
	 * @return	返回md5加密后的字符串
	 */
	public String EncoderByMd5(String str){
		try {
			//生成一个MD5加密计算摘要
			MessageDigest md5 = MessageDigest.getInstance("MD5");
			//计算md5函数
			md5.update(str.getBytes());
			//md5.digest();
			BigInteger big = new BigInteger(1, md5.digest());
			String param = big.toString(16);
			return param;
		} catch (NoSuchAlgorithmException e) {
			e.printStackTrace();
			return null;
		}
	}
}
