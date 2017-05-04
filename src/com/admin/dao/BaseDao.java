package com.admin.dao;

import java.util.List;

public interface BaseDao {
	/**
	 * 通用的查询接口
	 * @return
	 */
	public List executeQuery(String sql,Class userEntity,Object... parameter);
	
	/**
	 * 通用的增删改接口
	 * @param sql
	 * @param userEntity
	 * @return
	 */
	public int executeUpdate(String sql,Object... parameter);
	
}
