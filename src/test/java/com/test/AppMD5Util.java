package com.test;

public class AppMD5Util {

	public static void main(String[] args) {
		MD5 md5 = new MD5();
		String str = "12345678";
		String par = md5.EncoderByMd5(str);
		System.out.println(par);
	}

}
