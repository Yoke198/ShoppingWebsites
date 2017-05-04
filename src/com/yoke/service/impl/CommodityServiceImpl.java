package com.yoke.service.impl;

import java.util.List;

import com.yoke.dao.CommodityDao;
import com.yoke.dao.impl.CommodityDaoImpl;
import com.yoke.entity.GoodsEntity;
import com.yoke.entity.UserEntity;
import com.yoke.service.CommodityService;

public class CommodityServiceImpl implements CommodityService{

	CommodityDao commodityDao = new CommodityDaoImpl(); 
	/**
	 * 查询所有商品
	 */
	public List<GoodsEntity> getCommodityList() {
		String sql = "SELECT  com.`c_id` AS cid,com.`total` AS ctotal,com.`purchase` AS cpurchase,com.`countdown` AS ccountdown,com.`category` AS ccategory,com.`state` AS cstate,gd.`goods_name` AS gname,gd.`img` AS gimg,gd.`stock` AS gstock,gd.`sale` AS gsale,gt.`t_name` AS tname FROM commodity com LEFT JOIN goods gd ON com.`g_id` = gd.`id`LEFT JOIN goods_type gt ON gd.`id` = gt.`t_id`";
		List<GoodsEntity> list = commodityDao.executeQuery(sql, GoodsEntity.class, new Object[]{});
		
		return list;
	}
/**
 * 根据id查询商品
 */
	public GoodsEntity getGoodsById(int id) {
		String sql="SELECT com.c_id AS cid,com.total AS ctotal,com.`purchase`AS cpurchase,com.countdown AS ccountdown,com.category AS ccategory,com.state AS cstate,gd.`goods_name` AS gname,gd.`price` AS gprice,gd.`img` AS gimg,gd.`stock` AS gstock FROM commodity com LEFT JOIN goods gd ON com.`g_id` = gd.`id` LEFT JOIN goods_type gt ON gd.`id` = gt.`t_id` WHERE c_id = ?";
		List<GoodsEntity> executeQuery =   commodityDao.executeQuery(sql, GoodsEntity.class,  new Object[]{id});
		GoodsEntity gd = null;
		for(GoodsEntity g : executeQuery){
			
			gd=g;
		}
		return  gd;
	}

		

}
