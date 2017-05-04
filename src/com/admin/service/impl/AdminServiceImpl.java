package com.admin.service.impl;

import java.util.List;

import com.admin.dao.AdminDao;
import com.admin.dao.impl.AdminDaoImpl;
import com.admin.entity.AdminEntity;
import com.admin.service.AdminService;

public class AdminServiceImpl implements AdminService {
	
	AdminDao adminDao = new AdminDaoImpl();
	
	/**
	 * ��½
	 */
	public AdminEntity select(AdminEntity adminEntity) {
		return null;
	}
	
	/**
	 * ע��
	 */
	public boolean insert(AdminEntity adminEntity) {
		
		String sql="INSERT INTO admin(a_name,a_password)VALUE(?,?)";
		int result = adminDao.executeUpdate(sql, new Object[]{adminEntity.getUserName(),adminEntity.getUserPass()});
		
		return result > 0 ? true : false;
	}
	
	/**
	 * �޸�
	 */
	public boolean update(AdminEntity adminEntity) {
		return false;
	}
	
	/**
	 * ɾ��
	 */
	public boolean delecte(int aid) {
		
//		if(aid.size()>1){
//			for (String i : aid){
//				System.out.println(123);
//			}
//			
//		}
		String sql="DELETE FROM admin WHERE a_id = ?";
		int result = adminDao.executeUpdate(sql, new Object[]{aid});
		return result > 0 ? true : false;
	}

	/**
	 * ��ѯ����Ա������Ϣ
	 */
	public List<AdminEntity> getAdminList() {
		
		String sql = "SELECT a_id AS userId,a_name AS userName,a_password AS userPass FROM admin";
		
		List<AdminEntity>  list = adminDao.executeQuery(sql, AdminEntity.class, new Object[]{});		
		return list;
	}





}
