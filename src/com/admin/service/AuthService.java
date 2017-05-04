package com.admin.service;

import java.util.List;

import com.admin.entity.AuthBean;


public interface AuthService {

	
	/**
	 * 查询所有权限信息
	 * @return
	 */
	public List<AuthBean> getAuthList(Integer aid);
	
	/**
	 * 判断是否有子节点
	 * @return
	 */
	public boolean hasChildren(Integer aid);
	
}
