package com.yoke.action;

import java.util.List;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.yoke.entity.GoodsEntity;
import com.yoke.service.CommodityService;
import com.yoke.service.impl.CommodityServiceImpl;

/**
 * 最新揭晓商品列表
 * @author Administrator
 *
 */
public class CommodityAction extends ActionSupport{

	private static final long serialVersionUID = 1L;
	List<GoodsEntity> allGoods;
	
	CommodityService commodityService =  new CommodityServiceImpl();
	
	public String commodityList(){
		
		//获取正在开奖的列表
		allGoods = commodityService.getCommodityList();
		ActionContext.getContext().getSession().put("allGoods",allGoods);
		
		return SUCCESS;
	}

}


















