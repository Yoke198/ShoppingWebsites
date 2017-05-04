package com.admin.service;


import java.util.List;

import com.admin.entity.RoleEntity;


public interface RoleService{
	
	/**
	 * 注册
	 * @return
	 */
	public boolean insert(RoleEntity roleEntity);
	
	/**
	 * 修改
	 * @return
	 */
	public boolean update(RoleEntity roleEntity);
	
	/**
	 * 删除
	 * @return
	 */
	public boolean delecte(int i);
	
	/**
	 * 查询角色信息
	 * @return
	 */
	public List<RoleEntity> getRoleList();
	
	/**
	 * 保存用户和角色关系
	 * @return
	 */
	public boolean saveUserAsRole(Integer rid,Integer uid);
}
