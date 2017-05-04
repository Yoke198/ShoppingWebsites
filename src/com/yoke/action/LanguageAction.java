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
		
		//��ȡ����
		Locale locale = LocaleUtil.getLocale(language);
		
		//��ȡ�����Ķ���
		ActionContext context = ActionContext.getContext();
		
		//�л�����
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
















