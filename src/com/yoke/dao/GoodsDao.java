package com.yoke.dao;

import java.util.List;

import com.yoke.entity.GoodsEntity;

/**
 * 获取商品信息
 * @author Administrator
 *
 */
public interface GoodsDao {
	public List<GoodsEntity> getGoodsInfo();
	
	/**
	 * 根据商品id查询详细信息
	 * 
	 */
	public GoodsEntity getGoodsById(int id);
	
}
