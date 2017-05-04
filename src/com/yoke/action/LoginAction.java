package com.yoke.action;


import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.validator.annotations.RequiredStringValidator;
import com.opensymphony.xwork2.validator.annotations.StringLengthFieldValidator;
import com.opensymphony.xwork2.validator.annotations.Validations;
import com.yoke.entity.ParameterEntity;
import com.yoke.entity.UserEntity;
import com.yoke.service.LoginService;
import com.yoke.service.impl.LoginServiceImpl;

public class LoginAction extends ActionSupport{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	LoginService loginService=new LoginServiceImpl();

	private ParameterEntity par;
	 
	@Validations(
			
			requiredStrings = {@RequiredStringValidator(fieldName="par.userName",message="用户名不能为空",trim=true),
							   @RequiredStringValidator(fieldName="par.userPass",message="密码不能为空")
						
							   },
							   
			stringLengthFields={
					@StringLengthFieldValidator(fieldName="par.userName",minLength="3",maxLength="10",message="用户名的长度必须大于3"),
					@StringLengthFieldValidator(fieldName="par.userPass",minLength="5",maxLength="20",message="密码的长度必须大于5")}
	
	)

	public String login(){
		UserEntity result = loginService.login(par.getUserName());
		ServletActionContext.getRequest().getSession().setAttribute("user", par.getUserName());
             return "loginSuccess"; 
	}

	public ParameterEntity getPar() {
		return par;
	}
	public void setPar(ParameterEntity par) {
		this.par = par;
	}

	
}
