package com.yoke.interceptor;

import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;
import com.opensymphony.xwork2.validator.annotations.RequiredStringValidator;
import com.opensymphony.xwork2.validator.annotations.Validations;

public class InterceptAll extends AbstractInterceptor{

	private static final long serialVersionUID = 1L;

    /**
     * À¹½ØÆ÷³õÊ¼»¯
     */
    public void init() {
    	System.out.println("À¹½ØÆ÷³õÊ¼»¯");
    }
    
    /**
     * À¹½ØÆ÷Ïú»Ù
     */
    public void destroy() {
    	System.out.println("À¹½ØÆ÷Ïú»Ù");
    }
	
	public String intercept(ActionInvocation invocation) throws Exception {
		
//		System.out.println("½øÈëÀ¹½ØÆ÷");
//
//		String invoke = invocation.invoke();
//		
//		System.out.println("============"+invoke+"============");
//		
//		System.out.println("Àë¿ªÀ¹½ØÆ÷");
		return null;
	}

}

















