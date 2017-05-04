package com.yoke.action;

import com.opensymphony.xwork2.ActionSupport;
import com.yoke.entity.ParameterEntity;

public class AjaxRegisterAction extends ActionSupport{

	private static final long serialVersionUID = 1L;
	
	private String userName;

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String rega(){
		
		//System.out.println(userName);
		return "success";
	}


}
