package com.yoke.util;

import java.util.Locale;

public class LocaleUtil {

	
	/**
	 * �������Ի�ȡ���Զ���
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
