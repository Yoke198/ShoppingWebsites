package com.yoke.action;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.yoke.entity.GoodsEntity;
import com.yoke.service.CommodityService;
import com.yoke.service.impl.CommodityServiceImpl;

public class CommodityDetailsAction extends ActionSupport {

	private static final long serialVersionUID = 1L;

	/**
	 * …Ã∆∑œÍ«È
	 * 
	 * @return
	 */
	CommodityService commodityService;


	public String commodityDetails() {

		commodityService = new CommodityServiceImpl();

		String parameter = ServletActionContext.getRequest().getParameter("c_id");

		GoodsEntity goods = commodityService.getGoodsById(Integer.parseInt(parameter));

		ActionContext.getContext().getSession().put("goods", goods);
		return SUCCESS;
	}

}



















