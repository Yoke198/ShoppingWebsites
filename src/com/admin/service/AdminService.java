package com.admin.service;


import java.util.List;

import com.admin.entity.AdminEntity;


public interface AdminService{
	
	/**
	 * µÇÂ½
	 * @return
	 */
	public AdminEntity select(AdminEntity adminEntity);
	
	/**
	 * ×¢²á
	 * @return
	 */
	public boolean insert(AdminEntity adminEntity);
	
	/**
	 * ĞŞ¸Ä
	 * @return
	 */
	public boolean update(AdminEntity adminEntity);
	
	/**
	 * É¾³ı
	 * @return
	 */
	public boolean delecte(int i);
	
	/**
	 * ²éÑ¯½ÇÉ«ĞÅÏ¢
	 * @return
	 */
	public List<AdminEntity> getAdminList();
	
}
