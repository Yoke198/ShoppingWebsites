package com.yoke.service;

import java.util.List;

import com.yoke.entity.GoodsEntity;

public interface CommodityService {

	/**
	 * 获取所有商品
	 * @return
	 */
	public List<GoodsEntity> getCommodityList();
	
	/**
	 * 根据商品id查询详细信息
	 * 
	 */
	public GoodsEntity getGoodsById(int id);
	
	
}
