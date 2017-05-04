package com.admin.dao;

import java.util.List;

public interface BaseDao {
	/**
	 * ͨ�õĲ�ѯ�ӿ�
	 * @return
	 */
	public List executeQuery(String sql,Class userEntity,Object... parameter);
	
	/**
	 * ͨ�õ���ɾ�Ľӿ�
	 * @param sql
	 * @param userEntity
	 * @return
	 */
	public int executeUpdate(String sql,Object... parameter);
	
}
