package com.yoke.action;


import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.validator.annotations.EmailValidator;
import com.opensymphony.xwork2.validator.annotations.RequiredStringValidator;
import com.opensymphony.xwork2.validator.annotations.StringLengthFieldValidator;
import com.opensymphony.xwork2.validator.annotations.Validations;
import com.yoke.entity.ParameterEntity;
import com.yoke.service.CheckService;
import com.yoke.service.RegisterService;
import com.yoke.service.impl.CheckServiceImpl;
import com.yoke.service.impl.RegisterServiceImpl;

public class RegisterAction extends ActionSupport{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	RegisterService registerService=new RegisterServiceImpl();
	CheckService checkService = new CheckServiceImpl();
	private ParameterEntity par;
	 
	@Validations(
			
			requiredStrings = {@RequiredStringValidator(fieldName="par.userName",message="用户名不能为空",trim=true),
							   @RequiredStringValidator(fieldName="par.userPass",message="密码不能为空"),
							 //@RequiredStringValidator(fieldName="par.birthday",message="出生日期不能为空"),
							   @RequiredStringValidator(fieldName="par.email",message="邮箱不能为空")
							   },
							   
			stringLengthFields={
					@StringLengthFieldValidator(fieldName="par.userName",minLength="3",maxLength="10",message="用户名的长度必须大于3小于10个字符"),
					@StringLengthFieldValidator(fieldName="par.userPass",minLength="5",maxLength="20",message="密码的长度必须大于5小于20个字符")},
			
			emails = {@EmailValidator(fieldName="par.email",message="邮箱格式错误")}
			//,
			
			//intRangeFields = {@IntRangeFieldValidator(fieldName="par.age",min="1",max="150",message="年龄为1-150")}
	
	)

	public String register(){
		int result = registerService.register(par);
		
             return "registerSuccess"; 
	}

	public ParameterEntity getPar() {
		return par;
	}
	public void setPar(ParameterEntity par) {
		this.par = par;
	}

	
}
