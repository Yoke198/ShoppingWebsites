package com.admin.service.impl;

import java.util.List;

import com.admin.dao.RoleDao;
import com.admin.dao.impl.RoleDaoImpl;
import com.admin.entity.RoleEntity;
import com.admin.service.RoleService;

public class RoleServiceImpl implements RoleService {
	
	RoleDao roleDao = new RoleDaoImpl();
	
	
	/**
	 * 注册
	 */
	public boolean insert(RoleEntity roleEntity) {
		
		String sql="INSERT INTO role(r_name,r_desc)VALUE(?,?)";
		int result = roleDao.executeUpdate(sql, new Object[]{roleEntity.getRoleName(),roleEntity.getRoleDesc()});
		
		return result > 0 ? true : false;
	}
	
	/**
	 * 修改
	 */
	public boolean update(RoleEntity roleEntity) {
		return false;
	}
	
	/**
	 * 删除
	 */
	public boolean delecte(int aid) {
		
//		if(aid.size()>1){
//			for (String i : aid){
//				System.out.println(123);
//			}
//			
//		}
		String sql="DELETE FROM role WHERE r_id = ?";
		int result = roleDao.executeUpdate(sql, new Object[]{aid});
		return result > 0 ? true : false;
	}

	/**
	 * 查询角色所有信息
	 */
	public List<RoleEntity> getRoleList() {
		
		String sql = "SELECT r_id AS rid,r_name AS roleName,r_desc AS roleDesc FROM role";
		
		List<RoleEntity>  list = roleDao.executeQuery(sql, RoleEntity.class, new Object[]{});		
		return list;
	}
	
	/**
	 * 角色绑定用户
	 */
	public boolean saveUserAsRole(Integer rid,Integer uid) {
		
		String sql = "INSERT INTO admin_role(r_id,a_id) values(?,?)";
		
		int excuteSql = roleDao.executeUpdate(sql, new Object[]{rid,uid});
		
		return excuteSql>0 ? true: false;
	}





}
