package com.yoke.util;

import java.util.Locale;

public class LocaleUtil {

	
	/**
	 * 根据语言获取语言对象
	 * @param lan
	 * @return
	 */
	public static Locale getLocale(String language){
		Locale locale = new Locale(language);
		
		if("zh".equals(language)){
			locale = new Locale("zh","CN");
			
		}else if("en".equals(language)){
			locale = new Locale("en","US");
			
		}
		
		return locale;
	}	
}
