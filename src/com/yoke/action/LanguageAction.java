package com.yoke.action;

import java.util.Locale;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.yoke.util.LocaleUtil;

public class LanguageAction extends ActionSupport{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
    
	private String language;
	private String url;	
	
	public String changeLanguage(){
		
		//获取语言
		Locale locale = LocaleUtil.getLocale(language);
		
		//获取上下文对象
		ActionContext context = ActionContext.getContext();
		
		//切换语言
		context.setLocale(locale);
	
		
		return "success";
	}

	public String getLanguage() {
		return language;
	}

	public void setLanguage(String language) {
		this.language = language;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}
	
	
}
















