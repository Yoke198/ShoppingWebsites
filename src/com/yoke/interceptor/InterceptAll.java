package com.yoke.interceptor;

import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;
import com.opensymphony.xwork2.validator.annotations.RequiredStringValidator;
import com.opensymphony.xwork2.validator.annotations.Validations;

public class InterceptAll extends AbstractInterceptor{

	private static final long serialVersionUID = 1L;

    /**
     * ��������ʼ��
     */
    public void init() {
    	System.out.println("��������ʼ��");
    }
    
    /**
     * ����������
     */
    public void destroy() {
    	System.out.println("����������");
    }
	
	public String intercept(ActionInvocation invocation) throws Exception {
		
//		System.out.println("����������");
//
//		String invoke = invocation.invoke();
//		
//		System.out.println("============"+invoke+"============");
//		
//		System.out.println("�뿪������");
		return null;
	}

}

















