package com.yoke.service;

import java.util.List;

import com.yoke.entity.GoodsEntity;

public interface CommodityService {

	/**
	 * ��ȡ������Ʒ
	 * @return
	 */
	public List<GoodsEntity> getCommodityList();
	
	/**
	 * ������Ʒid��ѯ��ϸ��Ϣ
	 * 
	 */
	public GoodsEntity getGoodsById(int id);
	
	
}
