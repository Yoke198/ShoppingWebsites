package com.admin.service;


import java.util.List;

import com.admin.entity.RoleEntity;


public interface RoleService{
	
	/**
	 * ע��
	 * @return
	 */
	public boolean insert(RoleEntity roleEntity);
	
	/**
	 * �޸�
	 * @return
	 */
	public boolean update(RoleEntity roleEntity);
	
	/**
	 * ɾ��
	 * @return
	 */
	public boolean delecte(int i);
	
	/**
	 * ��ѯ��ɫ��Ϣ
	 * @return
	 */
	public List<RoleEntity> getRoleList();
	
	/**
	 * �����û��ͽ�ɫ��ϵ
	 * @return
	 */
	public boolean saveUserAsRole(Integer rid,Integer uid);
}
