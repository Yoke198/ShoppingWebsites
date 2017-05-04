package com.admin.service.impl;

import java.util.List;

import com.admin.dao.AuthDao;
import com.admin.dao.impl.AuthDaoImpl;
import com.admin.entity.AuthBean;
import com.admin.service.AuthService;

public class AuthServcieImpl implements AuthService{
	
	AuthDao authDao = new AuthDaoImpl();
	

	/**
	 * 获取所有权限信息
	 */
	public List<AuthBean> getAuthList(Integer aid) {
		
		String sql = "SELECT p_id AS id,p_name AS `text` FROM powers WHERE p_fid = ?";
		
		List<AuthBean> excuteQuery = authDao.executeQuery(sql, AuthBean.class, new Object[]{aid});
		
		return excuteQuery;
	}


	/**
	 * 判断节点下是否有子节点
	 * @param aid
	 * @return
	 */
	public boolean hasChildren(Integer aid) {
		String sql = "SELECT p_id AS id,p_name AS `text` FROM powers where p_fid = ?";
		
		List excuteQuery = authDao.executeQuery(sql, AuthBean.class, new Object[]{aid});
		
		// 如果返回的结果是空，那么就返回 false ，说明没有子节点，  反之就返回true ，说明存在子节点
		return null == excuteQuery || excuteQuery.size() == 0 ? false : true;
	}

}
