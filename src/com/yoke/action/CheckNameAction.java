package com.yoke.action;


import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServlet;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;
import com.yoke.service.CheckService;
import com.yoke.service.impl.CheckServiceImpl;

public class CheckNameAction extends ActionSupport{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	CheckService checkService = new CheckServiceImpl();

	public String check(){
		String pars = ServletActionContext.getRequest().getParameter("name");
		
		//String parameter = ServletActionContext.getRequest().getParameter("userName");
		boolean checkname = checkService.checkname(pars);
		try {
			PrintWriter out = ServletActionContext.getResponse().getWriter();
			out.print(checkname);
			out.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
		return "input";
	}

}
