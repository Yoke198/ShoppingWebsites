package com.yoke.action;

import java.util.List;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.yoke.entity.GoodsEntity;
import com.yoke.service.CommodityService;
import com.yoke.service.impl.CommodityServiceImpl;

/**
 * ���½�����Ʒ�б�
 * @author Administrator
 *
 */
public class CommodityAction extends ActionSupport{

	private static final long serialVersionUID = 1L;
	List<GoodsEntity> allGoods;
	
	CommodityService commodityService =  new CommodityServiceImpl();
	
	public String commodityList(){
		
		//��ȡ���ڿ������б�
		allGoods = commodityService.getCommodityList();
		ActionContext.getContext().getSession().put("allGoods",allGoods);
		
		return SUCCESS;
	}

}


















