package com.yoke.dao;

import java.util.List;

import com.yoke.entity.GoodsEntity;

/**
 * ��ȡ��Ʒ��Ϣ
 * @author Administrator
 *
 */
public interface GoodsDao {
	public List<GoodsEntity> getGoodsInfo();
	
	/**
	 * ������Ʒid��ѯ��ϸ��Ϣ
	 * 
	 */
	public GoodsEntity getGoodsById(int id);
	
}
