package com.admin.service;


import java.util.List;

import com.admin.entity.AdminEntity;


public interface AdminService{
	
	/**
	 * ��½
	 * @return
	 */
	public AdminEntity select(AdminEntity adminEntity);
	
	/**
	 * ע��
	 * @return
	 */
	public boolean insert(AdminEntity adminEntity);
	
	/**
	 * �޸�
	 * @return
	 */
	public boolean update(AdminEntity adminEntity);
	
	/**
	 * ɾ��
	 * @return
	 */
	public boolean delecte(int i);
	
	/**
	 * ��ѯ��ɫ��Ϣ
	 * @return
	 */
	public List<AdminEntity> getAdminList();
	
}
